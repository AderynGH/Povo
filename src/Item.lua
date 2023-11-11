local Item = _G.Povo.Displayable:new()

function Item:new(o, type, name, price)
    o = o or _G.Povo.Displayable:new(o)
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