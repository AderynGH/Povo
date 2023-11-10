local function WriteDefaults()
    local file = io.open("data/config.txt", "w")
    io.write("ResWidth  = 800")
    io.write("ResHeight = 600")
    io.write("Fullscreen = false")
    io.write("Display = 1")
end   

local function ReadSettings()
    local file = io.open("data/config.txt", "r")

    if file == nil then
        WriteDefaults()
    end

    local function ReadFile()
        local fileData = io.read("*all")
    end
end

function love.conf(t)
    ReadSettings()
    t.identity = "data/saves" -- file location
    -- t.version = "1.0.0" specifies love version??
    t.console = false
    -- t.externalstorage = true -- for android
    t.gammacorrect = true
    t.window.title = "Povo"
    -- t.window.icon = "" for setting window icon
    t.window.width  = 800
    t.window.height = 600
    -- t.window.resizable = true can break games
    -- t.window.minwidth/height can be useful if resizable is on
    t.window.borderless = true/false
    -- t.window.vsync = 0/1
    t.window.display = 1
    t.window.fullscreen = false --true or false
    -- t.window.x = offset in pixels
    -- t.window.y = offset in pixels
    -- it is possible to disable and enable modules i.e.
    -- t.modules.(module) = true/false
end