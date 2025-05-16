# =======================================================================================
# �����T�v�F�摜�t�@�C��(�w��g���q)�̂�Exif���̎B�e�������t�@�C�����ɐݒ肷��B�������̃t�@�C�������݂���ꍇ�́A_�Œʂ��ԍ�������B
# �O������F�Ȃ�
# ���ӎ����F�c���Ă��������t�@�C�����̃t�@�C�������݂��Ȃ����ƁB
# ���s���@�F�t�H���_�ɔz�u��Apowershell���N�����Acd�ŃJ�����g�f�B���N�g�����ړ�
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

            # �d���`�F�b�N
            $count = 1
            while (Test-Path $newpath) {
                $newname = "$formatted" + "_$count" + "$ext"
                $newpath = Join-Path $dir $newname
                $count++
            }

            $image.Dispose()  # ���l�[���O�ɉ���I

            Rename-Item $file.FullName -NewName $newname
            Write-Host "Renamed: $($file.Name) �� $newname"
        }
        else {
            $image.Dispose()  # �Y�ꂸ�ɉ��
            Write-Warning "$($file.Name) �� Exif �B�e����������܂���"
        }
    }
    catch {
        Write-Warning "�G���[: $($file.Name) �������ł��܂���ł��� �� $($_.Exception.Message)"
    }
}
