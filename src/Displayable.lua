local Displayable = {}
function Displayable:new(o, position, image, shapeCollider)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.position = position or {x=0, y=0}
    self.image = image or "../sprites/placeholder.png"
    self.shapeCollder = shapeCollider or nil
    return o
end

function Displayable:draw()
    -- code to draw the entity on the screen
end

return Displayable
