# Run this script from inside the repo folder
$repoPath = Split-Path -Parent $MyInvocation.MyCommand.Path

$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $repoPath
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true

$lastPush = [DateTime]::MinValue

$action = {
    $now = [DateTime]::Now
    if (($now - $script:lastPush).TotalSeconds -lt 5) { return }
    $script:lastPush = $now
    Set-Location $repoPath
    $status = git status --porcelain
    if (-not $status) { return }
    git add .
    git commit -m "auto: update $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git push origin main
    Write-Host "pushed ok" -ForegroundColor Green
}

Register-ObjectEvent $watcher "Changed" -Action $action | Out-Null
Register-ObjectEvent $watcher "Created" -Action $action | Out-Null
Register-ObjectEvent $watcher "Deleted" -Action $action | Out-Null
Register-ObjectEvent $watcher "Renamed" -Action $action | Out-Null

Write-Host "watching... press Ctrl+C to stop" -ForegroundColor Cyan
while ($true) { Start-Sleep -Seconds 1 }
