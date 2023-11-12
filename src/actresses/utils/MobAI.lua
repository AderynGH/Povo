local Grid = require("vendor.jumper.jumper.grid")
local Pathfinder = require("vendor.jumper.jumper.pathfinder")

local mobAI = {}

-- Value for walkable tiles
local walkable = 0

function mobAI:new(o, trgt)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.wantToMove = true
	self.path = {}
	self.pathBuffer = self.path
	self.nodes = {}
	self.nodePos = 1
	self.target = trgt or _G.gameManager.player1
	return o
end

local scene = _G.gameDisplay.SceneManager:getScene()

local grid = Grid(scene.gridData)
local myFinder = Pathfinder(grid, 'JPS', walkable)

function mobAI:getPath()
	local cPosX, cPosY = self.position[1], self.position[2]
	local pPosX, pPosY = self.target.Position[1], self.target.Position[2]
	self.path = myFinder:getPath(cPosX, cPosY, pPosX, pPosY)
	self.nodes = self.path:nodes()
end

function mobAI:moveTowardsTarget(dt)
	if self.path then
		self.position [1] = self.position[1] + (self.nodes:getX(self.nodePos) * self.speed) / dt
		self.position [2] = self.position[2] + (self.nodes:getY(self.nodePos) * self.speed) / dt
		-- needs to be able to increment the node position
		self:checkNodePos()
	end
end

function mobAI:checkTargetPos(cPos)
	if cPos ~= self.target.Position then
		mobAI:getPath()
	end
end

function mobAI:checkBuffer()
	if self.path ~= self.pathBuffer then
		self.nodePos = 1
		self.pathBuffer = self.path
	end
end

function mobAI:checkNodePos()
	if self.position[1] == self.position.nodes:getX(self.nodePos + 1) and
	self.position[2] == self.nodes:getY(self.nodePos + 1) then
		self.nodePos = self.nodePos + 1
	end

	--[[if (self.position[1] % self.position.nodes:getX(self.nodePos + 1)) 
	< 1 and self.position[2] % self.nodes:getY(self.nodePos + 1) < 1 then
		self.nodePos = self.nodePos + 1
	end]]
	-- something like this would be more appropriate, checking for an approximation
	-- instead of an exact value, though what I wrote fails to take into account directional
	-- influences, but if mobs don't really have collision, then it doesn't particularly matter
	-- since the mob should be able to get to an exact position
end

-- a function for the ai to be able to decide actions would likely be appropriate here 
return mobAI