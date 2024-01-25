-- 監視するフォルダのパス
local home = os.getenv("HOME")
local watchPath = home .. "/Dropbox/Actions/compress"

-- ffmpegコマンドのパス
local ffmpegPath = "/opt/homebrew/bin/ffmpeg"

-- 対応する動画の拡張子リスト
local extensions = { "avi", "flv", "m4v", "mkv", "mov", "mp4", "wmv", "m4v" }

-- ファイルが動画形式で、圧縮されたファイルでないかを確認する関数
local function isVideoFile(filePath)
    -- ファイル名が "_compressed" で終わるかチェック
    if filePath:find("_compressed%..+$") then
        return false
    end

    local ext = filePath:match("^.+(%..+)$")
    if ext then
        ext = ext:sub(2):lower()  -- 拡張子の先頭のドットを削除し小文字に変換
        for _, e in ipairs(extensions) do
            if e == ext then return true end
        end
    end
    return false
end


-- 圧縮処理を行う関数
local function compressVideo(filePath)
    local basename = hs.fs.displayName(filePath):match("^(.+)%..+$")
    local compressedDir = hs.fs.pathToAbsolute(watchPath .. "/compressed") or hs.fs.mkdir(watchPath .. "/compressed")
    local outputPath = compressedDir .. "/" .. basename .. "_compressed.mp4"

    -- ffmpegコマンドの実行
    hs.task.new(ffmpegPath, function(exitCode, stdOut, stdErr)
        if exitCode == 0 then
            hs.notify.new({title="動画の圧縮を完了しました", informativeText=basename}):send()
        else
            hs.notify.new({title="動画の圧縮に失敗しました", informativeText=basename}):send()
        end
    end, { "-y", "-i", filePath, "-crf", "24", outputPath }):start()
end

-- フォルダを監視する
hs.pathwatcher.new(watchPath, function(files)
    for _, file in ipairs(files) do
        if isVideoFile(file) then
            compressVideo(file)
            hs.notify.new({title="動画の圧縮を開始しました", informativeText=hs.fs.displayName(file)}):send()
        end
    end
end):start()
