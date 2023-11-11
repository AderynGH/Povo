local Displayable = require("Displayable")

local Actress = Displayable:new()

function Actress:new(o, type, name, hp, speed)
    o = o or Displayable:new(o)
    setmetatable(o, self)
    self.__index = self
    self.type = type or "Enemy"
    self.name = name or "mob name"
    self.hp = hp or 100
    self.speed = speed or 10

    return o
end
function Actress:die(deathAnimation)
    -- death code here
end

return Actress
