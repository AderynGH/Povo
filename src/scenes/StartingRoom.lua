local StartingRoom = _G.Povo.Scene:new()
local MobManager = _G.Povo.MobManager:new()
local Player = _G.Povo.Character:new(nil, "Player", 100, 10)
_G.gameManager.characters[Player.name] = Player
Player.position = {x = 5, y = 5}
StartingRoom:addDisplayable(Player)
StartingRoom:addDisplayable(MobManager:spawnZombie())

return StartingRoom