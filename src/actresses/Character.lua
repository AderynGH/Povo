
local Character = _G.Povo.Actress:new()

function Character:new(o, name, hp, speed)
    o = o or _G.Povo.Actress:new(o)
    setmetatable(o, self)
    self.__index = self
    self.type = "Character"
    self.name = "Player"
    self.hp = hp or 100
    self.speed = speed or 10
    self.image = "sprites/character.png"
    
    return o
end

return Character