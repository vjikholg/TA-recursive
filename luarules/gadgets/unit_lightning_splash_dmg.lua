
function gadget:GetInfo()
    return {
        name      = 'Lightning Spash Damage',
        desc      = 'Handles Lightning Weapons Spash Damage',
        author    = 'TheFatController',
        version   = 'v1.0',
        date      = 'April 2011',
        license   = 'GNU GPL, v2 or later',
        layer     = 0,
        enabled   = true
    }
end

----------------------------------------------------------------
-- Synced
----------------------------------------------------------------
if (gadgetHandler:IsSyncedCode()) then
  -- for k, wd in pairs(WeaponDefNames) do
  --     Spring.Echo("[debug] weapon key:", k, "id:", wd.id)
  -- end
----------------------------------------------------------------
-- Config
----------------------------------------------------------------
    local sparkWeapons = {
        [ WeaponDefNames["armzeus_arm_lightning"].id] = {ceg = "ZEUS_FLASH_SUB", forkdamage = 0.5, maxunits = 2, radius = 60},
        [ WeaponDefNames["tllrlrpc_tll_barret"].id ] = {ceg = "tll_spray_exp", forkdamage = 0.5, maxunits = 4, radius = 500}
    }

    local sparkWeaponIDs = {
        WeaponDefNames["armzeus_arm_lightning"].id, 
        WeaponDefNames["tllrlrpc_tll_barret"].id 
    }

    local immuneToSplash = {
        [UnitDefNames["armzeus"].id] = true,
        [UnitDefNames["armclaw"].id] = true,
        [UnitDefNames["tllrlrpc"].id] = true,
    }

    local mRandom = math.random
    local rad = math.rad
    local SpGetUnitPosition = Spring.GetUnitPosition
    local SpGetUnitsInSphere = Spring.GetUnitsInSphere
    local SpGetUnitDefID = Spring.GetUnitDefID
    local SpSpawnCEG = Spring.SpawnCEG
    local SpAddUnitDamage = Spring.AddUnitDamage
    
    function gadget:Initialize() 
        Spring.Echo("initializing spark weapons:")

        for _, wID in ipairs(sparkWeaponIDs) do
          Spring.Echo("Weapon:", wID)
          Script.SetWatchWeapon(wID, true)
        end
    end
    

    ----------------------------------------------------------------
    -- Callins
    ----------------------------------------------------------------
    function gadget:UnitDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponDefID, projectileID, attackerID, attackerDefID, attackerTeam)
        Spring.Echo("LightningFork call-in received:", unitID, unitDefID, unitTeam, damage, paralyzer, weaponDefID, projectileID, attackerID, attackerDefID, attackerTeam) -- not passing gadget weaponDefID for some reason. 
        -- Spring.Echo("attacker: ".. UnitDefs[attackerDefID].name) 
        -- Spring.Echo("defender:" .. UnitDefs[UnitDefID].name)
      
        if sparkWeapons[weaponDefID] then
            local x,y,z = SpGetUnitPosition(unitID)
            local angle = rad(mRandom(1,360))
            local nearUnits = SpGetUnitsInSphere(x,y,z,sparkWeapons[weaponDefID].radius)
            local count = 0
            for _,nearUnit in ipairs(nearUnits) do
                if (count >= sparkWeapons[weaponDefID].maxunits) then
                    return
                end

                local nearUnitDefID = SpGetUnitDefID(nearUnit)
                
                -- Spring.getUnitTeam(nearUnit)
                -- nearUnit ~= unitID -> attacker != defender
                -- unitTeam ~= attackerTeam -> attacker team != defender team
                if (nearUnit ~= unitID) and (unitTeam ~= attackerTeam) and (not immuneToSplash[nearUnitDefID]) then -- added friendly fire check. 
                    local nx,ny,nz = SpGetUnitPosition(nearUnit)
                    SpSpawnCEG(sparkWeapons[weaponDefID].ceg,nx,ny,nz,0,0,0)
    	                SendToUnsynced("splashsound", nx, ny, nz)
                    SpAddUnitDamage(nearUnit, damage*sparkWeapons[weaponDefID].forkdamage, 0, attackerID, 0) -- this should fix it, weaponDefID -> 0
                    count = count + 1                                                                        -- remark that AddUnitDamage can end up calling UnitDamaged recursively  
                end                                                                                          -- zzz ai gave me crashcode WTF. 
            end
        end
    end
    
else
----------------------------------------------------------------
-- Unsynced
----------------------------------------------------------------
function gadget:Initialize()
    gadgetHandler:AddSyncAction("splashsound", SplashSound)
end

function SplashSound(_, x, y, z)
    Spring.PlaySoundFile("sounds/explosions/lasrfir2.wav", 2, x,y,z)
end

end

