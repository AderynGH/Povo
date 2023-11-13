
local Character = _G.Povo.Actress:new()

function Character:new(o, name, position, hp, speed)
    o = o or _G.Povo.Actress:new(o)
    setmetatable(o, self)
    self.__index = self
    self.type = "Character"
    self.name = name or "Player"
    self.position = position or {}
    self.hp = hp or 100
    self.speed = speed or 10
    self.image = "sprites/GreaterThan.png"

    return o
end

return Character