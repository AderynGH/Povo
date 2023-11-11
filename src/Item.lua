local Displayable = require("Displayable")

local Item = Displayable:new()

function Item:new(o, type, name, price)
    o = o or Displayable:new(o)
    setmetatable(o, self)
    self.__index = self
    self.type = type or "Item"
    self.name = name or "Item name"
    self.price = price or 0
    return o
end

function Item:use()
    -- call item function
end

return Item