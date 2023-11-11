local Displayable = require("Displayable")

local UI = Displayable:new()

function UI:new(o)
    o = o or Displayable:new(o)
    setmetatable(o, self)
    self.__index = self
    return o
end

function UI:use()
    -- ui function
end


return UI