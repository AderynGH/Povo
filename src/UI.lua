local UI = _G.Povo.Displayable:new()

function UI:new(o)
    o = o or _G.Povo.Displayable:new(o)
    setmetatable(o, self)
    self.__index = self
    return o
end

function UI:use()
    -- ui function
end


return UI