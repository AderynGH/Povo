-- this should handle what and how many mobs are spawned
local MobManager = {}

function MobManager:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.mobs = {}
    self.mobCount = 0
    return o
end

function MobManager:spawnZombie()
    self.mobCount = self.mobCount + 1
    table.insert(self.mobs, _G.Povo.MobData.Zombie:new("zombie" .. self.mobCount, 100, 10))
end

function MobManager:removeMob(i)
    self.mobCount = self.mobCount - 1
    table.remove(self.mobs, i)
end

return MobManager