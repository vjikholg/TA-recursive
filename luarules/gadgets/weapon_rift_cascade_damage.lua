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
local spGetUnitPosition = Spring.GetUnitPosition
local spAddUnitDamage = Spring.AddUnitDamage

local tlldmcID

if gadgetHandler:IsSyncedCode() then
-- SYNCED
    -- local riftWeapons = {
    --   [WeaponDefNames['tlldmc_tlldmc'].id] = {explodedmg = 500, explodenum = 6, radius = 500}
    -- }
    function gadget:Initialize()
        -- for k, wd in pairs(WeaponDefNames) do
        --     if k:find("dmc") then   -- any substring you expect
        --         Spring.Echo("[debug] weapon key:", k, "id:", wd.id)
        --     end
        -- end

        local wd = WeaponDefNames['tlldmc_tlldmc']
        if wd then
            tlldmcID = wd.id
            Script.SetWatchWeapon(tlldmcID, true)
        end
    end

    function gadget:Explosion_GetWantedWeaponDef()
        if tlldmcID then
            return {[tlldmcID] = true}
        end
    end

    function gadget:UnitDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponID, projectileID, attackerID, attackerDefID, attackerTeam ) -- rift opening script
        -- Spring.Echo("weaponDefID for RiftCascade check: ", weaponDefID)
        if weaponID ~= tlldmcID then -- not DMC -> dont occur
            return false end
        Spring.Echo("[rift] cascade triggered on unit", unitID)
        -- impact point = unit centre 
        local px, py, pz = spGetUnitPosition(unitID)

        spSpawnCEG("purple_explosion", px, py, pz)

        for i=1,6 do -- spawn 6 explosions around epicenter 
            local angle = random() * 6.28318
            local dist = random(180, 900)
            local x = px + dist * math.cos(angle)
            local z = pz + dist * math.sin(angle)
            spSpawnCEG("purple_explosion", x, py, z)         

            local units = spGetUnitsInSphere(px, py, pz, 2000)
            if units then 
                for _, u in ipairs(units) do 
                    spAddUnitDamage(u, 2000, 0, ownerID, weaponID)
                    local ux, uy, uz = spGetUnitPosition(u)
                    for i=1,6 do -- spawns 6 secondary explosion near main big explosion
                        local nx = ux + random(10,100) + math.cos(random() * 6.28318) 
                        local nz = uz + random(10,100) + math.sin(random() * 6.28318) 
                        spSpawnCEG("purple_explosion", nx, uy, nz) 
                        spAddUnitDamage(u, 500, 0, attackerID, weaponID)
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
