local Enemy = require("Enemy")

local GameManager = {}
function GameManager:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.characters = {}
    self.enemies = {}
    local score = 0
    return o
end
function GameManager:loop()
    -- code to run the game loop goes here
end
return GameManager