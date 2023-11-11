--requires
_G.love = require("love")
_G.Povo = require("Header")

--instatiating objects
_G.gameDisplay = _G.Povo.Display:new()
_G.gameManager = _G.Povo.GameManager:new()

function love.load()
    --On game load code
end

function love.update(dt)
    _G.gameManager.loop()
    _G.gameDisplay:draw()
    _G.Povo.Display()
end
