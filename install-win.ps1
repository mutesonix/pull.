# pull. — one-line installer for Windows · by LAB. x SUNN.
#   irm https://github.com/mutesonix/pull./releases/latest/download/install-win.ps1 | iex
# Downloading with PowerShell (not the browser) skips the blue "Windows protected your PC" screen.
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'
Write-Host ""
Write-Host "  pull.  installing for Windows" -ForegroundColor White
$f = Join-Path $env:TEMP 'pull-setup.exe'
Invoke-WebRequest -UseBasicParsing 'https://github.com/mutesonix/pull./releases/latest/download/pull-setup-win.exe' -OutFile $f
Write-Host "  Opening pull. Setup - press INSTALL in the window that appears." -ForegroundColor Gray
Start-Process $f
