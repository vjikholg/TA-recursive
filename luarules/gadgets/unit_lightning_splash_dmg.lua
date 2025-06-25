
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
        [ WeaponDefNames["tllrlrpc_tll_barret"].id ] = {ceg = "tll_spray_exp", forkdamage = 0.5, maxunits = 5, radius = 500}
    }

    local sparkWeaponIDs = {
        WeaponDefNames["armzeus_arm_lightning"].id, 
        WeaponDefNames["tllrlrpc_tll_barret"].id 
    }

    local immuneToSplash = {
        [UnitDefNames["armzeus"].id] = true,
        [UnitDefNames["armclaw"].id] = true,
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
      
        -- testing 
        Script.SetWatchWeapon( WeaponDefNames["armcom_armcomlaser"].id, true)
        Script.SetWatchWeapon( WeaponDefNames["armpincer_arm_pincer_gauss"].id, true)
        Spring.Echo("[LightningSplash] GetWatchWeapon", WeaponDefNames["armzeus_arm_lightning"].id, Script.GetWatchWeapon(WeaponDefNames["armzeus_arm_lightning"].id))  
        Spring.Echo("[LightningSplash] GetWatchWeapon", WeaponDefNames["armpincer_arm_pincer_gauss"].id, Script.GetWatchWeapon(WeaponDefNames["armpincer_arm_pincer_gauss"].id))  
        Spring.Echo("[LightningSplash] GetWatchWeapon", WeaponDefNames["tllrlrpc_tll_barret"].id, Script.GetWatchWeapon(WeaponDefNames["armzeus_arm_lightning"].id))  
        Spring.Echo("[LightningSplash] GetWatchWeapon", WeaponDefNames["armcom_armcomlaser"].id, Script.GetWatchWeapon(WeaponDefNames["armcom_armcomlaser"].id))  

        -- for i=1,#WeaponDefs do
        --   local wd = WeaponDefs[i]
        --   Spring.Echo("Dumping wDefs: ",i, wd.name, Script.GetWatchWeapon(i))  
        -- end
    end
    
    -- testing WatchWeapon actually works. 
    -- function gadget:GameFrame(f)
    --     if f % 240 == 0 then  -- every second
    --       Spring.Echo("[LightningSplash] GetWatchWeapon", WeaponDefNames["armzeus_arm_lightning"].id, Script.GetWatchWeapon(WeaponDefNames["armzeus_arm_lightning"].id))  
    --       Spring.Echo("[LightningSplash] GetWatchWeapon", WeaponDefNames["armpincer_arm_pincer_gauss"].id, Script.GetWatchWeapon(WeaponDefNames["armpincer_arm_pincer_gauss"].id))  
    --       Spring.Echo("[LightningSplash] GetWatchWeapon", WeaponDefNames["tllrlrpc_tll_barret"].id, Script.GetWatchWeapon(WeaponDefNames["armzeus_arm_lightning"].id))  
    --       Spring.Echo("[LightningSplash] GetWatchWeapon", WeaponDefNames["armcom_armcomlaser"].id, Script.GetWatchWeapon(WeaponDefNames["armcom_armcomlaser"].id))  
    --     end
    -- end
    ----------------------------------------------------------------
    -- Callins
    ----------------------------------------------------------------
    function gadget:UnitDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponDefID, projectileID, attackerID, attackerDefID, attackerTeam)
      Spring.Echo("LightningFork call-in received:", unitID, unitDefID, unitTeam, damage, paralyzer, weaponDefID, projectileID, attackerID, attackerDefID, attackerTeam) -- not passing gadget weaponDefID for some reason. 
      Spring.Echo("attacker: ".. UnitDefs[attackerDefID].name) -- NOTE: weaponDefID not being passed to UnitDamaged for some reason
      
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
                    if (nearUnit ~= unitID) and (not immuneToSplash[nearUnitDefID]) then
                        local nx,ny,nz = SpGetUnitPosition(nearUnit)
                        SpSpawnCEG(sparkWeapons[weaponDefID].ceg,nx,ny,nz,0,0,0)
    	                  SendToUnsynced("splashsound", nx, ny, nz)
                        SpAddUnitDamage(nearUnit, damage*sparkWeapons[weaponDefID].forkdamage, 0, attackerID, weaponDefID)
                        count = count + 1
                    end
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
    Spring.PlaySoundFile("sounds/explosions/lasrhit2.wav", 2, x,y,z)
end

end
