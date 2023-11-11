local Display = {}

function Display:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.displayables = {}  -- Initialize an empty table to hold displayable objects
    return o
end

function Display:add(displayable)
    table.insert(self.displayables, displayable)
end

function Display:remove(displayable)
    for i, v in ipairs(self.displayables) do
        if v == displayable then
            table.remove(self.displayables, i)
            break
        end
    end
end

function Display:draw()
    for _, displayable in ipairs(self.displayables) do 
        displayable:draw()  -- Assuming each displayable has a draw method
    end
end

return Display
