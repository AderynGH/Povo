local Actress = require("Actress")

local Character = Actress:new()

function Character:new(o, name, type, hp, speed)
    o = o or Actress:new(o)
    setmetatable(o, self)
    self.__index = self
    self.type = type
    self.name = name or "DefaulEnemy"
    self.hp = hp or 100
    self.speed = speed or 10
    -- if then based on enum of character type else defalut.png
    self.image = "assets/enemy.png"
    
    return o
end

return Character