local Actress = require("Actress")
local Controller = require("Controller")

local Character = Actress:new()

function Character:new(o, name, hp, speed)
    o = o or Actress:new(o)
    setmetatable(o, self)
    self.__index = self
    self.type = "Character"
    self.name = "Player"
    self.hp = hp or 100
    self.speed = speed or 10
    self.image = "sprites/character.png"
    self.inventory = {}
    self.controller = Controller:new()
    
    return o
end

function Character:attack()
    -- attack code
end

function Character:pickup(item, pos)
     table.insert(self.inventory, pos, item)
end

function Character:dropItem(pos)
    table.remove(self.inventory, pos)
end

return Character