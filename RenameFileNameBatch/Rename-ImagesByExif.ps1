# =======================================================================================
# 処理概要：画像ファイル(指定拡張子)のみExif情報の撮影日時をファイル名に設定する。同時刻のファイルが存在する場合は、_で通し番号をつける。
# 前提条件：なし
# 注意事項：残しておきたいファイル名のファイルが存在しないこと。
# 実行方法：フォルダに配置後、powershellを起動し、cdでカレントディレクトリを移動
#          powershell -ExecutionPolicy Bypass -File Rename-ImagesByExif.ps1
# =======================================================================================

$files = Get-ChildItem -File -Include *.jpg, *.jpeg, *.png -Recurse

foreach ($file in $files) {
    try {
        $image = [System.Drawing.Image]::FromFile($file.FullName)
        $propId = 0x9003  # DateTimeOriginal

        if ($image.PropertyIdList -contains $propId) {
            $prop = $image.GetPropertyItem($propId)
            $datetime = [System.Text.Encoding]::ASCII.GetString($prop.Value).Trim([char]0)
            $formatted = $datetime -replace ":", "" -replace " ", "_"
            $ext = $file.Extension
            $newname = "$formatted$ext"
            $dir = $file.DirectoryName
            $newpath = Join-Path $dir $newname

            # 重複チェック
            $count = 1
            while (Test-Path $newpath) {
                $newname = "$formatted" + "_$count" + "$ext"
                $newpath = Join-Path $dir $newname
                $count++
            }

            $image.Dispose()  # リネーム前に解放！

            Rename-Item $file.FullName -NewName $newname
            Write-Host "Renamed: $($file.Name) → $newname"
        }
        else {
            $image.Dispose()  # 忘れずに解放
            Write-Warning "$($file.Name) に Exif 撮影日時がありません"
        }
    }
    catch {
        Write-Warning "エラー: $($file.Name) を処理できませんでした → $($_.Exception.Message)"
    }
}
