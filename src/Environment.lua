local Displayable = require("Displayable")

local Environment = Displayable:new()

function Environment:new(o, type, name, hp)
    o = o or self
    setmetatable(o, self)
    self.__index = self
    self.type = type
    self.name = name or "Environment"
    self.hp = hp or -1
    self.image = "sprites/defaultEnv.png"
end 

return Environment