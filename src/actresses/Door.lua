local Door = _G.Povo.Actress:new()

function Door:new(o, name, doorType, hp, speed)
    o = o or _G.Povo.Actress:new(o)
    setmetatable(o, self)
    self.__index = self
    self.doorType = doorType
    self.name = name or "Door"
    self.hp = hp or 100
    self.speed = speed or 0
    self.image = _G.love.graphics.newImage("sprites/ForwardSlash.png")

    return 0
end

return Door