local EventSystem = {}

function EventSystem:new(o)
    o = o or {}
    setmetatable(o, self)
    self.events {}
    return o
end

function EventSystem:addEvent()
    -- assign id to event
    -- assign 'handled' value 0
end

function EventSystem:checkEvent()
    -- has event been handled?
    -- if yes assign handled to true, call remove event
end

function EventSystem:removeEvent()
    -- does what it says on the tin
end

function EventSystem:eventHandler()
    -- calls relevant function in order to handle event
end

return EventSystem