-- this should handle what and how many mobs are spawned
local MobManager = {}

function MobManager:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.mobs = {}
    return o
end

function MobManager:SpawnZombie()
    table.insert(self.mobs, _G.Povo.MobData.Zombie:new("zombie", 100, 10))
end

return MobManager