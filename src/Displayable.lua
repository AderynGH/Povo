local Displayable = {}
function Displayable:new(o, position, color, image)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.position = position or {x=0, y=0}
    self.color = color or {r=255, g=255, b=255}
    self.image = image or "assets/placeholder.png"
    return o
end

function Displayable:draw()
    -- code to draw the entity on the screen
end

return Displayable
