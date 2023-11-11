_G.Povo = {}
--requires
_G.love = require("love")
_G.Povo = require("Header")

--instatiating objects
_G.gameDisplay = _G.Povo.Display:new()
_G.gameManager = _G.Povo.GameManager:new()

function love.load()
    --On game load code
    _G.gameDisplay:add(_G.Povo.Displayable:new(nil, {x=0, y=0}, love.graphics.newImage("../sprites/GreaterThan.png"), 0.1, '1-1'))
end

function love.update(dt)
    _G.gameManager.loop()
    _G.gameDisplay:draw()
    _G.Povo.Display()
end
