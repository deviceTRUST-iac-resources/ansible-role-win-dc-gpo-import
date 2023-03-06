$BackupPath = "c:\GPO\GPO"

Get-Childitem $BackupPath | ForEach-Object{

    $BackupGUID = (Get-ChildItem $_.FullName).Name.split(" ")[0].Replace("{","").Replace("}","")

    Import-GPO -BackupId $BackupGUID -Path $_.FullName -TargetName $_.Name -CreateIfNeeded

}