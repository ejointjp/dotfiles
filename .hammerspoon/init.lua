-- フォルダを開く
function openFolder(modifiers, key, path)
  hs.hotkey.bind(modifiers, key, function()
    hs.execute("open " .. path)
  end)
end

-- アプリを開く
function launchApp(modifiers, key, appName)
  hs.hotkey.bind(modifiers, key, function()
    hs.application.launchOrFocus(appName)
  end)
end

-- URLを開く関数を定義
function openURL(modifiers, key, url)
  hs.hotkey.bind(modifiers, key, function()
    hs.urlevent.openURL(url)
  end)
end

openFolder({"command", "control"}, "D", "~/Dropbox")
openFolder({"command", "control"}, "P", "~/Dropbox/Projects")
openFolder({"command", "control"}, "S", "~/Dropbox/_Screenshot")

launchApp({"command", "control"}, "J", "Google Chrome")
launchApp({"command", "control"}, "O", "Obsidian")
launchApp({"command", "control"}, "N", "Notion")
launchApp({"command", "control"}, ";", "Visual Studio Code");
launchApp({"command", "control"}, "space", "Hyper");
launchApp({"command", "control"}, "return", "Finder")

openURL({"command", "control"}, "K", "https://chat.openai.com/?model=gpt-4")

