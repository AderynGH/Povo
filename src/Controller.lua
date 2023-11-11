_G.love = require(love)

local Controller = {}

function Controller:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

return Controller