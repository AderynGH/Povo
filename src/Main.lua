--requires
_G.love = require("love")
local Display = require("Display")
local GameManager = require("GameManager")


--instatiating objects
local gameDisplay = Display:new()
local gameManager = GameManager:new()

function love.load()
    gameManager()
end

function love.update(dt)
    gameManager.loop()
    gameDisplay:draw()
    Display()
end
