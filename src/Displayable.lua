local Displayable = {}
function Displayable:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.position = o.position or {x=0, y=0}
    self.image = o.image or _G.love.graphics.newImage("sprites/FilledBlock.png")
    self.frameDuration = o.frameDuration or 0.1
    self.currentFrame = 1
    self.elapsedTime = 0
    self.totalFrames = o.totalFrames or 1

    self.frameQuads = {}
    local frameWidth, frameHeight = 16, 16
    local sheetWidth, sheetHeight = self.image:getWidth(), self.image:getHeight()

    for i = 0, self.totalFrames - 1 do
        local x = (i * frameWidth) % sheetWidth
        local y = math.floor((i * frameWidth) / sheetWidth) * frameHeight
        local quad = love.graphics.newQuad(x, y, frameWidth, frameHeight, sheetWidth, sheetHeight)
        table.insert(self.frameQuads, quad)
    end

    return o
end

function Displayable:update(dt)
    self.elapsedTime = self.elapsedTime + dt
    if self.elapsedTime >= self.frameDuration then
        self.elapsedTime = self.elapsedTime - self.frameDuration
        self.currentFrame = self.currentFrame + 1
        if self.currentFrame > #self.frameQuads then
            self.currentFrame = 1
        end
    end
end

function Displayable:draw()
    --_G.love.graphics.setColor(1, 0, 0)
    --_G.love.graphics.rectangle("fill", self.position.x, self.position.y, 16, 16)
    _G.love.graphics.draw(self.image, self.frameQuads[self.currentFrame], self.position.x, self.position.y)
end

return Displayable
