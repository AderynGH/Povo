local Actress = require("Actress")

local Enemy = Actress:new()

function Enemy:new(o, name, type, hp, speed)
    o = o or Actress:new(o)
    setmetatable(o, self)
    self.__index = self
    self.type = type
    self.name = name or "DefaultEnemy"
    self.hp = hp or 100
    self.speed = speed or 10
    -- if then based on enum of character type else default.png
    self.image = "sprites/enemy.png"

    return o
end

function Enemy:attack(attackAnimation, weapon)
    -- atack code here
end

return Enemy