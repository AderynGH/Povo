--requires
_G.Povo = {}
_G.love = require("love")
_G.Povo = require("Header")

--instatiating object
_G.gameManager = _G.Povo.GameManager:new()

function love.load()
    --On game load code
    -- _G.gameDisplay:add(_G.Povo.Displayable:new(nil, {x=5, y=5}, _G.love.graphics.newImage("sprites/AtSign.png"), 0.5, 1))

end

function love.update(dt)
    _G.gameManager.loop()
    
end

function love.draw()
    _G.gameManager.gameDisplay:draw()
end