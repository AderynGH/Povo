local StartingRoom = _G.Povo.Scene:new()
local Player = _G.Povo.Character:new(nil, "Player", 100, 10)
_G.gameManager.characters[Player.name] = Player
Player.position = {x = 5, y = 5}
StartingRoom:addDisplayable(Player)