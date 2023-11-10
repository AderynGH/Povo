local Character = require("Character")
local Enemy = require("Enemy")

local GameManager = {}
function Game:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.characters = {}
    self.enemies = {}
    local player = Character:new(nil, "Player", 100, 10)
    local score = 0
    return o

    function Game:loop()
        -- code to run the game loop goes here
    end
end
return GameManager