local MobAI = _G.Povo.MobAI:new()
local Enemy = _G.Povo.Enemy:new()

-----------------------------------------------------------------------------
local Zombie = setmetatable({}, Enemy)
Zombie.__index = Zombie

function Zombie:new(name, hp, damage, ai)
    local instance = setmetatable(Enemy:new(name, hp, damage), Zombie)
    self.ai = ai or MobAI
    return instance
end

function Zombie:Bite()
    -- if zombie is touching player, player hp down 
end

-----------------------------------------------------------------------------
local Lich = setmetatable({}, Enemy)
Lich.__index = Lich

function Lich:new(name, hp, damage, ai)
    local instance = setmetatable(Enemy:new(name, hp, damage), Lich)
    self.ai = ai or self.defaultAI()
    return instance
end

function Lich:Fireball()
    -- spawns a 'minus' projectile that flys at the player
end

-----------------------------------------------------------------------------

local OnkiGamora = setmetatable({}, Enemy)
OnkiGamora.__index = OnkiGamora

function OnkiGamora:new(name, hp, damage, ai)
    local instance = setmetatable(Enemy:new(name, hp, damage), OnkiGamora)
    self.ai = ai or self.defaultAI()
    return instance
end

function OnkiGamora:ThrowBoomerang()
    -- throws maybe a 'bracket' at the player that arches back
end

-----------------------------------------------------------------------------

return {
    Zombie = Zombie,
    Lich = Lich,
    OnkiGamora = OnkiGamora
}