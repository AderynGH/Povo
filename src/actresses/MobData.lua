local MobAI = require("utils/MobAI")
local Enemy = _G.Povo.Enemy()

-----------------------------------------------------------------------------
local Zombie = setmetatable({}, Enemy)
Zombie.__index = Zombie

function Zombie:New(name, hp, damage)
    local instance = setmetatable(Enemy:new(name, hp, damage), Zombie)
    self.ai = MobAI.Zombie
    return instance
end

-----------------------------------------------------------------------------
local Lich = setmetatable({}, Enemy)
Lich.__index = Lich

function Lich:New(name, hp, damage, ai)
    local instance = setmetatable(Enemy:new(name, hp, damage), Lich)
    self.ai = ai or self.defaultAI()
    return instance
end

-----------------------------------------------------------------------------

local OnkiGamora = setmetatable({}, Enemy)
OnkiGamora.__index = OnkiGamora

function OnkiGamora:New(name, hp, damage, ai)
    local instance = setmetatable(Enemy:new(name, hp, damage), OnkiGamora)
    self.ai = ai or self.defaultAI()
    return instance
end

return {
    Zombie = Zombie,
    Lich = Lich,
    OnkiGamora = OnkiGamora
}