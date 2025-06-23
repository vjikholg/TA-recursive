function gadget:GetInfo()
  return {
    name    = "Rift Cascade Damage",
    desc    = "Spawns damaging explosions on units around weapon impact site",
    author   = "vjikholg",
    date    = "2025",
    license   = "GNU GPL v2 or later",
    layer   = 0,
    enabled = true,
  }
end

local random = math.random

local spSpawnCEG = Spring.SpawnCEG
local spGetUnitsInSphere = Spring.GetUnitsInSphere
local SpGetUnitPosition = Spring.GetUnitPosition
local spAddUnitDamage = Spring.AddUnitDamage

local tlldmcID

if gadgetHandler:IsSyncedCode() then
-- SYNCED
    local riftWeapons = {
      [WeaponDefNames.tlldmc.id] = {explodedmg = 2500, explodenum = 6, radius = 500}
    }
    
    function gadget:Initialize()
        local wd = WeaponDefNames.tlldmc
        if wd then
            tlldmcID = wd.id
            Script.SetWatchWeapon(tlldmcID, true)
        end
    end

    function gadget:Explosion_GetWantedWeaponDef()
        if dmcWeaponID then
            return {[dmcWeaponID] = true}
        end
    end

    function gadget:Explosion(weaponID, px, py, pz, ownerID)
        if riftWeapons[weaponID] or not ownerID then return false end
        local dmg = riftWeapons[weaponID].explodedmg
        
        for i = 1, 6 do -- spawns 6 explosions randomly around target 
            local angle = random() * 6.28318
            local dist = random(360, 720)
            local x = px + dist * math.cos(angle)
            local z = pz + dist * math.sin(angle)
            spSpawnCEG("purple_explosion", x, py, z)
            local units = spGetUnitsInSphere(x, py, z, 80)
            if units then
                for _, u in ipairs(units) do
                    if u ~= ownerID then
                      local nx, ny, nz = SpGetUnitPosition(u)
                      nx = nx + random(-50,50)
                      ny = ny + random(0,50)
                      nz = nz + random(-50,50)
                      spSpawnCEG("purple_explosion", nx, ny, nz) -- spawns secondary explosion near explosion
                      spAddUnitDamage(u, dmg, 0, ownerID, weaponID)
                    end
                end
            end
        end
        return false
    end

else
-- UNSYNCED
  -- no unsynced part
end
