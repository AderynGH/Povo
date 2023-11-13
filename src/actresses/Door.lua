local Door = _G.Povo.Actress:new()

function Door:new(o, name, type, hp, speed)
    o = o or _G.Povo.Actress:new(o)
    setmetatable(o, self)
    self.__index = self
    self.type = type
    self.name = name or "Door"
    self.hp = hp or 100
    self.speed = speed or 0
    self.image = "sprites/ForwardSlash.png"

    return 0
end

return Door