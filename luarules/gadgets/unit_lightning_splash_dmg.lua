
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
    local SpGetUnitTeam = Spring.GetUnitTeam
    local SpSpawnProjectile = Spring.SpawnProjectile

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
        if unitTeam == attackerTeam then return end -- if friendly fire -> do not call fork

        if sparkWeapons[weaponDefID] then
            local x,y,z = SpGetUnitPosition(unitID)
            local info = sparkWeapons[weaponDefID]
            local nearUnits = SpGetUnitsInSphere(x,y,z,info.radius)

            -- local angle = rad(mRandom(1,360))
            local count = 0
            for _,nearUnit in ipairs(nearUnits) do
                if (nearUnit ~= unitID) then 
                    local nearUnitTeam = SpGetUnitTeam(nearUnit)
                    local nearUnitDefID = SpGetUnitDefID(nearUnit)

                    if (nearUnitTeam ~= attackerTeam) and (not immuneToSplash[nearUnitDefID]) then -- added friendly fire check. 
                        local nx,ny,nz = SpGetUnitPosition(nearUnit)
                        SpSpawnProjectile(weaponDefID, {
                            pos = {x,y,z}, 
                            endpos = {nx,ny,nz},
                            owner = attackerID, 
                            team = attackerTeam, 
                            ttl = 10, 
                        })
    	                SendToUnsynced("splashsound", nx, ny, nz)
                        SpAddUnitDamage(nearUnit, damage*info.forkdamage, 0, attackerID, 0)  -- this should fix it, weaponDefID -> 0
                        SpSpawnCEG(info.ceg, nx, ny, nz,0,0,0)                               -- remark that AddUnitDamage can end up calling UnitDamaged recursively  
                        count = count + 1                                                    
                        if (count >= info.maxunits) then break end                           
                    end                                                                      
                end
            end
        end
    end

----------------------------------------------------------------
-- Unsynced
----------------------------------------------------------------
else 
    function gadget:Initialize()
        gadgetHandler:AddSyncAction("splashsound", SplashSound)
    end

    function SplashSound(_, x, y, z)
        Spring.PlaySoundFile("sounds/explosions/lasrfir2.wav", 0.5, x,y,z)
    end
------------------
-- END UNSYNCED --
------------------

end 