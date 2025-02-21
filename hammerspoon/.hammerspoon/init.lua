hs.window.animationDuration = 0
meh = { "ctrl", "alt", "shift" }

function setAppCenter()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()
    local f = win:frame()
    f.w = max.w / 1.5
    f.h = max.h / 1.5
    win:setFrame(f)
    win:centerOnScreen()
end

hs.hotkey.bind(meh, "T", function()
	hs.application.launchOrFocus("Alacritty")
end)

hs.hotkey.bind(meh, "R", function()
	hs.application.launchOrFocus("Messages")
    setAppCenter()
end)

hs.hotkey.bind(meh, "S", function()
	hs.application.launchOrFocus("Brave Browser")
end)

hs.hotkey.bind(meh, "D", function()
	hs.application.launchOrFocus("Safari")
end)

hs.hotkey.bind(meh, "C", function()
	hs.application.launchOrFocus("Notes")
end)

hs.hotkey.bind(meh, "X", function()
	hs.application.launchOrFocus("Mail")
    setAppCenter()
end)

hs.hotkey.bind(meh, "G", function()
	hs.application.launchOrFocus("Spotify")
    setAppCenter()
end)

-- maximize current window 
hs.hotkey.bind(meh, "W", function()
    local win = hs.window.focusedWindow()
    win:maximize()
end)

hs.hotkey.bind(meh, "V", function()
    setAppCenter()
end)

hs.hotkey.bind(meh, "H", function()
    local visWin = hs.window.visibleWindows() -- list of hs.window obj
    while #visWin > 0 do
        local currWin = hs.window.frontmostWindow()
        local winApp = currWin:application()
        winApp:hide()
        visWin = hs.window.visibleWindows()
    end
end)

-- center + full Height of current window
hs.hotkey.bind(meh, "M", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.y = max.y
    f.w = max.w / 1.5
    f.h = max.h
    win:setFrame(f)
    win:centerOnScreen()
end)

-- move app to Left
hs.hotkey.bind(meh, "F", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-- move app to Right
hs.hotkey.bind(meh, "P", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)
