local Displayable = require("Displayable")

local UI = Displayable:new()

function UI:new(o)
    o = o or Displayable:new(o)
    setmetatable(o, self)
    self.__index = self
    return o
end

return UI