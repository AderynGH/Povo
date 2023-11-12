local sceneManager = {}

function sceneManager:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.currentScene = {}
    return o
end

function sceneManager:getScene()
    return self.currentScene
end

function sceneManager:setScene(o) -- pass in scene value, not 100% on how to implement this
    _G.gameDisplay.sceneManager.currentScene = o
end

return sceneManager