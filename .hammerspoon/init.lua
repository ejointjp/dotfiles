--dofile(hs.configdir .. "/dofile/autoCompressVideo.lua")

local hotKey = require("modules/hotKey")

hotKey.openFolder({"command", "control"}, "U", "~/Dropbox")
hotKey.openFolder({"command", "control"}, "[", "~/Dropbox/_Screenshot")
hotKey.launchApp({"command", "control"}, "J", "Safari")
hotKey.launchApp({"command", "control"}, "K", "UpNote")
hotKey.launchApp({"command", "control"}, "L", "Obsidian")
hotKey.launchApp({"command", "control"}, ";", "Cursor");
hotKey.launchApp({"command", "control"}, "space", "Hyper");
hotKey.launchApp({"command", "control"}, "return", "Finder")
hotKey.launchApp({"command", "control"}, "]", "ChatGPT")

hotKey.openFinderDirectory({"command", "control"}, "O", "Hyper")

hs.hotkey.bind({"control"}, "J", function()
  hs.eventtap.keyStroke({}, "return")
end)

hs.hotkey.bind({"command", "option"}, "F", function()
    hs.application.launchOrFocus("Finder")
end)

-- Google Maps を開く
hs.hotkey.bind({"command", "control"}, "M", function()
    hs.urlevent.openURL("https://www.google.com/maps")
end)

-- Google翻訳ショートカット（command + control + T）
-- Google翻訳の他のタブを閉じるバージョン
hs.hotkey.bind({"command", "control"}, "T", function()
  -- クリップボードの内容を取得
  local text = hs.pasteboard.getContents()

  -- テキストが存在する場合、Google翻訳を開く
  if text then
      local url = "https://translate.google.com/?sl=auto&tl=ja&text=" .. hs.http.encodeForQuery(text)
      hs.osascript.applescript(string.format([[
          tell application "Google Chrome"
              if (count of windows) is 0 then
                  make new window
              end if
              
              -- Google翻訳のタブを閉じる
              set googleTranslateURL to "https://translate.google.com/"
              set windowList to every window
              repeat with win in windowList
                  set tabList to every tab of win
                  repeat with t in tabList
                      if (URL of t contains googleTranslateURL) then
                          close t
                      end if
                  end repeat
              end repeat
              
              -- 新しいタブでGoogle翻訳を開く
              set newTab to make new tab at end of tabs of front window
              set URL of newTab to "%s"
          end tell
      ]], url))
  else
      hs.alert.show("クリップボードにテキストがありません")
  end
end)

-- Safariの右のタブを閉じる
hs.hotkey.bind({"option", "shift"}, "R", function()
    local safari = hs.application.find("Safari")
    if not safari then return end

    local script = [[
        tell application "Safari"
            if (count of windows) > 0 then
                set currentTabIndex to (index of current tab of front window)
                set tabCount to (count of tabs of front window)

                repeat while tabCount > currentTabIndex
                    close tab tabCount of front window
                    set tabCount to tabCount - 1
                end repeat
            end if
        end tell
    ]]

    hs.osascript.applescript(script)
end)