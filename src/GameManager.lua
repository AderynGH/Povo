local Enemy = require("Enemy")
local SceneManager = _G.Povo.SceneManager:new()
local MobManager = _G.Povo.MobManager:new()

local GameManager = {}

function GameManager:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.enemies = {}
    self.player1 = {}
    self.score = 0
    self.MobManager = MobManager
    return o
end

function GameManager:setPlayer1(o)
    self.player1 = o
end

function GameManager:loop()
    -- code to run the game loop goes here
end

return GameManager