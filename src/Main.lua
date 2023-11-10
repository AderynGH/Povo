_G.love = require("love")

function love.load()
    Game()
end

function love.update(dt)
    Game.loop()
    Display()
end
