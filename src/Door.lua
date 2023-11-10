local Actress = require("Actress")

local Door = Actress:new()

function Door:new(o, name, type, hp, speed)
    o = o or Actress:new(o)
    setmetatable(o, self)
    self.__index = self
    self.type = type
    self.name = name or "Door"
    self.hp = hp or 100
    self.speed = speed or 0
    self.image = "sprites/door.png"

    return 0
end

return Door