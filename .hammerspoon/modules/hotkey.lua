-- ホットきーで実行する関数いろいろ
local hotKey = {}

-- フォルダを開く
function hotKey.openFolder(modifiers, key, path)
  hs.hotkey.bind(modifiers, key, function()
    hs.execute("open " .. path)
  end)
end

-- アプリを開く
function hotKey.launchApp(modifiers, key, appName)
  hs.hotkey.bind(modifiers, key, function()
    hs.application.launchOrFocus(appName)
  end)
end

-- ブラウザでURLを開く
function hotKey.openURL(modifiers, key, url)
  hs.hotkey.bind(modifiers, key, function()
    hs.urlevent.openURL(url)
  end)
end

-- Finderのカレントディレクトリをターミナルで開く
function hotKey.openFinderDirectory(modifiers, key, terminalApp)
  hs.hotkey.bind(modifiers, key, function()
    local script = [[
      tell application "Finder"
        try
          set currentPath to (POSIX path of (target of front window as alias))
        on error
          set currentPath to (POSIX path of (path to home folder as text)) 
        end try
      end tell
    ]]

    local status, result, descriptor = hs.osascript.applescript(script)
    if status then
      hs.execute('open -a "' .. terminalApp .. '" "' .. result .. '"')
    end
  end)
end

return hotKey