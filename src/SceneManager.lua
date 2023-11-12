local SceneManager = {}

function SceneManager:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.currentScene = self.setScene(o)
    return o
end

function SceneManager:getScene()
    return self.currentScene
end

function SceneManager:setScene(o)
    self.currentScene = o or _G.Povo.Scene:new()
end
-- pass in scene value, not 100% on how to implement this
return SceneManager