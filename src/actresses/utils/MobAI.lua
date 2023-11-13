local Grid = require("actresses.utils.vendor.jumper.jumper.grid")
local Pathfinder = require("actresses.utils.vendor.jumper.jumper.pathfinder")

local MobAI = {}

-- Value for walkable tiles
local walkable = 0

function MobAI:new(o, trgt)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.wantToMove = true
	self.path = {}
	self.pathBuffer = self.path
	self.nodes = {}
	self.nodePos = 1
	self.target = trgt or {0, 0}
	return o
end
local ResX = 800
local ResY = 600
local gridData = {}
for i = 1, ResY do
	gridData[i] = {}
	for j = 1, ResX do
		gridData[i][j] = 0
	end
end

local grid = Grid(gridData)
local myFinder = Pathfinder(grid, 'JPS', walkable)

function MobAI:getPath()
	local cPosX, cPosY = self.position[1], self.position[2]
	local pPosX, pPosY = self.target.Position[1], self.target.Position[2]
	self.path = myFinder:getPath(cPosX, cPosY, pPosX, pPosY)
	self.nodes = self.path:nodes()
end

function MobAI:moveTowardsTarget(dt)
	if self.path then
		self.position [1] = self.position[1] + (self.nodes:getX(self.nodePos) * self.speed) / dt
		self.position [2] = self.position[2] + (self.nodes:getY(self.nodePos) * self.speed) / dt
		-- needs to be able to increment the node position
		self:checkNodePos()
	end
end

function MobAI:checkTargetPos(cPos)
	if cPos ~= self.target.Position then
		MobAI:getPath()
	end
end

function MobAI:checkBuffer()
	if self.path ~= self.pathBuffer then
		self.nodePos = 1
		self.pathBuffer = self.path
	end
end

function MobAI:checkNodePos()
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
return MobAI