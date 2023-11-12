local scene = {}

function scene:new(o, displayables)
    setmetatable(o, self)
    self.displayables = displayables or {}
    self.mapData = {}
    self.gridData = {}
    return o
end

function scene:addDisplayable(displayable)
    table.insert(self.displayables, displayable)
end

function scene:generateMap()
    self.mapData = {}
end

local ResX = 800
local ResY = 600 -- placeholder for testing

function scene:generateMapGrid(mapData)
    self.gridData = {}
    for i = 1, ResY do
        for j = 1, ResX do
            self.gridData[i][j] = 0
        end
    end
    -- nested for loops of current resolution, should be generated either based on room or level
end

function scene:setDisplay()
    -- code here, send displayables to display
end

function scene:removeDisplayable(i)
    table.remove(self.displayables, i)
end

function scene:clear()
    self.displayable = {}
end

return scene