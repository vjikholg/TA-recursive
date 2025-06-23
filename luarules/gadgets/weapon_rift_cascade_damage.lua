function gadget:GetInfo()
  return {
    name    = "Rift Cascade Damage",
    desc    = "Spawns damaging rift bursts around tlldmc hits",
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
local spAddUnitDamage = Spring.AddUnitDamage

local tlldmcID

if gadgetHandler:IsSyncedCode() then
-- SYNCED
    function gadget:Initialize()
        local wd = WeaponDefNames.tlldmc
        if wd then
            tlldmcID = wd.id
            Script.SetWatchWeapon(tlldmcID, true)
        end
    end

    function gadget:Explosion(weaponID, px, py, pz, ownerID)
        if weaponID ~= tlldmcID or not ownerID then return false end
        for i = 1, 6 do
            local angle = random() * 6.28318
            local dist = random(40, 120)
            local x = px + dist * math.cos(angle)
            local z = pz + dist * math.sin(angle)
            spSpawnCEG("purple_explosion", x, py, z)
            local units = spGetUnitsInSphere(x, py, z, 80)
            if units then
                for _, u in ipairs(units) do
                    if u ~= ownerID then
                      spAddUnitDamage(u, 2500, 0, ownerID, weaponID)
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
