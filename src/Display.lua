local Display = {}

function Display:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.scene = {}  -- Initialize an empty table to hold scene objects
    return o
end

function Display:addScene(scene)
    table.insert(self.scene, scene)
end

function Display:removeScene(scene, i)
    table.remove(scene, i)
end

function Display:draw()
    for _, displayable in ipairs(self.displayables) do 
        displayable:draw()
    end
end

return Display
