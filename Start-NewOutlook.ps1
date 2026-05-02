Start-Sleep -Seconds 5

$pkg = Get-AppxPackage -Name "Microsoft.OutlookForWindows" -ErrorAction SilentlyContinue

if ($pkg) {
    Start-Process "shell:AppsFolder\Microsoft.OutlookForWindows_8wekyb3d8bbwe!Microsoft.OutlookForWindows"
}