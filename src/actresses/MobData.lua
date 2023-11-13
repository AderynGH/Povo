local MobAI = _G.Povo.MobAI:new()
local Enemy = _G.Povo.Enemy:new()

-----------------------------------------------------------------------------
local Zombie = setmetatable({}, Enemy)
Zombie.__index = Zombie

function Zombie:new(name, hp, damage, ai)
    local instance = setmetatable(Enemy:new(name, hp, damage), Zombie)
    instance.ai = ai or MobAI
    instance.image = "sprites/Z.png"
    return instance
end

function Zombie:bite()
    -- if zombie is touching player, player hp down 
end

-----------------------------------------------------------------------------
local Lich = setmetatable({}, Enemy)
Lich.__index = Lich

function Lich:new(name, hp, damage, ai)
    local instance = setmetatable(Enemy:new(name, hp, damage), Lich)
    instance.ai = ai or self.defaultAI()
    return instance
end

function Lich:fireball()
    -- spawns a 'minus' projectile that flys at the player
end

-----------------------------------------------------------------------------

local OnkiGamora = setmetatable({}, Enemy)
OnkiGamora.__index = OnkiGamora

function OnkiGamora:new(name, hp, damage, ai)
    local instance = setmetatable(Enemy:new(name, hp, damage), OnkiGamora)
    instance.ai = ai or self.defaultAI()
    return instance
end

function OnkiGamora:throwBoomerang()
    -- throws maybe a 'bracket' at the player that arches back
end

-----------------------------------------------------------------------------

return {
    Zombie = Zombie,
    Lich = Lich,
    OnkiGamora = OnkiGamora
}