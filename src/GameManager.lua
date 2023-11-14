local GameDisplay = _G.Povo.Display:new()
local SceneManager = _G.Povo.SceneManager:new()
local EventSystem = _G.Povo.EventSystem:new()

local GameManager = {}

function GameManager:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.enemies = {}
    self.player1 = {}
    self.score = 0
    self.gameDisplay = GameDisplay
    self.sceneManager = SceneManager
    return o
end

-- need to find way to add created displayables to be added to displayables table

function GameManager:setPlayer1(o)
    self.player1 = o
end

function GameManager:loop()
    -- code to run the game loop goes here
end

return GameManager