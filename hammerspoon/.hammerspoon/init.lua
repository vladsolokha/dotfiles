hs.loadSpoon("AllBrightness")
spoon.AllBrightness:start()

hs.loadSpoon("RoundedCorners")
spoon.RoundedCorners:start()

meh = { "ctrl", "alt", "shift" }

hs.hotkey.bind(meh, "X", function()
	hs.application.launchOrFocus("Messages")
end)
hs.hotkey.bind(meh, "C", function()
	hs.application.launchOrFocus("Google Chrome")
end)
hs.hotkey.bind(meh, "S", function()
	hs.application.launchOrFocus("Safari")
end)
hs.hotkey.bind(meh, "D", function()
	hs.application.launchOrFocus("Notes")
end)
hs.hotkey.bind(meh, "T", function()
	hs.application.launchOrFocus("WezTerm")
end)
