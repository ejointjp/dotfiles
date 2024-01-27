dofile(hs.configdir .. "/dofile/autoCompressVideo.lua")

local hotKey = require("modules/hotKey")

hotKey.openFolder({"command", "control"}, "U", "~/Dropbox")
hotKey.openFolder({"command", "control"}, "[", "~/Dropbox/_Screenshot")

hotKey.launchApp({"command", "control"}, "J", "Google Chrome")
hotKey.launchApp({"command", "control"}, "L", "Obsidian")
hotKey.launchApp({"command", "control"}, "K", "Notion")
hotKey.launchApp({"command", "control"}, ";", "Visual Studio Code");
hotKey.launchApp({"command", "control"}, "space", "Hyper");
hotKey.launchApp({"command", "control"}, "return", "Finder")

hotKey.openURL({"command", "control"}, "]", "https://chat.openai.com/?model=gpt-4")

hotKey.openFinderDirectory({"command", "control"}, "O", "Hyper")

