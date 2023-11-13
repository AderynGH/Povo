local Enemy = _G.Povo.Actress:new()

function Enemy:new(o, name, enemyType, hp, speed)
    if type(o) == "string" then
        -- If o is a string, assume it's the name and create a new object
        o = _G.Povo.Actress:new()
        name = o
    else
        -- If o is an object or nil, create a new object if needed
        o = o or _G.Povo.Actress:new()
    end

    setmetatable(o, self)
    self.__index = self
    self.type = enemyType
    self.name = name or "DefaultEnemy"
    self.hp = hp or 100
    self.speed = speed or 10
    -- if then based on enum of character type else default.png
    self.image =  "sprites/Z.png"
    self.attacks = {}
    return o
end

function Enemy:attack(attackAnimation, weapon)
    -- atack code here
end

function Enemy:defaultAI()

end

return Enemy