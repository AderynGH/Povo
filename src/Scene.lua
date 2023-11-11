local scene = {}

function scene:new(o, displayables)
    setmetatable(o, self)
    self.displayables = displayables or {}
    return o
end

function scene:addDisplayable(displayable)
    table.insert(self.displayables, displayable)
end


function scene:generateMap()
    local mapData = {}
end

function scene:generateMapGrid(mapData)
    -- nested for loops of 1's and 0's 
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