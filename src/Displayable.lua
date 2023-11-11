local Displayable = {}
function Displayable:new(o, position, image, frameDuration, frames)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.position = position or {x=0, y=0}
    self.image = image or "../sprites/placeholder.png"
    self.frames = frames or '1-1'
    

    self.grid = _G.Povo.Anim8.newGrid(16, 16, self.image:getWidth(), self.image:getHeight())
    self.animation = _G.Povo.Anim8.newAnimation(self.grid(frames, 1), frameDuration or 0.1)

    return o
end

function Displayable:draw()
    self.animation:draw(self.image, self.position.x, self.position.y)
end

return Displayable
