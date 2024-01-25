dofile(hs.configdir .. "/dofile/autoCompressVideo.lua")

local hotKey = require("modules/hotKey")

hotKey.openFolder({"command", "control"}, "D", "~/Dropbox")
hotKey.openFolder({"command", "control"}, "S", "~/Dropbox/_Screenshot")

hotKey.launchApp({"command", "control"}, "J", "Google Chrome")
hotKey.launchApp({"command", "control"}, "L", "Obsidian")
hotKey.launchApp({"command", "control"}, "N", "Notion")
hotKey.launchApp({"command", "control"}, ";", "Visual Studio Code");
hotKey.launchApp({"command", "control"}, "space", "Hyper");
hotKey.launchApp({"command", "control"}, "return", "Finder")

hotKey.openURL({"command", "control"}, "K", "https://chat.openai.com/?model=gpt-4")

hotKey.openFinderDirectory({"command", "control"}, "O", "Hyper")

