$TargetPath = "c:\GPO"
mkdir $TargetPath

Get-GPO -all | ForEach-Object{

    $GPOName = $_.DisplayName
    $GPOID = $_.ID
    $BackupPath = $TargetPath + "\" + $GPOName
    mkdir $BackupPath
    Backup-GPO -Path $BackupPath -Guid $GPOID

}