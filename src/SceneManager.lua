local SceneManager = {}
local StartingRoom = require("scenes.StartingRoom")

function SceneManager:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.currentScene = self.setScene(o) or {}
    self.scenes = {}
    return o
end

function SceneManager:AddScene(scene)
    table.insert(self.scenes, scene)
end

function SceneManager:getScene()
    return self.currentScene
end

function SceneManager:setScene(i)
    self.currentScene = self.scenes[i]
end

function SceneManager:removeScene(i)
    table.remove(self.scenes, i)
end
-- pass in scene value, not 100% on how to implement this

-- Add scenes here
SceneManager:AddScene(StartingRoom)

return SceneManager