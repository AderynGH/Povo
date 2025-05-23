local Actress = _G.Povo.Displayable:new()

function Actress:new(o, actType, name, hp, speed)
    o = o or _G.Povo.Displayable:new(o)
    setmetatable(o, self)
    self.__index = self
    self.actType = actType or "Enemy"
    self.name = name or "mob name"
    self.hp = hp or 100
    self.speed = speed or 10

    return o
end

function Actress:newAnimation(o, aniName, d, idle, sf, aniL, spd, aniSprites)
    o = o or Actress:new(o)
    setmetatable(o, self)
    self.__index = self
    self.animationName = aniName or "default"
    self.direction = d or "right"
    self.idle = idle or true
    self.startFrame = sf or 1
    self.animationLength = aniL or 1
    self.animationSpeed = spd or 20
    self.animationTimer = 0.1
    self.sprite = love.graphics.newImage(aniSprites) or
    love.graphics.newImage("sprites/defaultActress.png")
    --[[self.spriteWidth = SpriteManger:getSpriteWidth(aniSprites) or 64
    self.spriteHeight = getSpriteHeight(aniSprites) or 64
    self.quadWidth = getQuadWidth(spriteWidth) or 64
    self.quadHeight = getQuadHeight(spriteHeight) or 64]]
    self.quads = {}

    return o
end

return Actress