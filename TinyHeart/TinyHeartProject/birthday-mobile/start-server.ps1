# PowerShell script to start local server
Write-Host "Starting local server..." -ForegroundColor Green
Write-Host ""
Write-Host "Server will run on http://localhost:8080" -ForegroundColor Yellow
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host ""

$currentDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $currentDir

# Try Python first
try {
    python -m http.server 8080
} catch {
    # If Python fails, try Node.js
    Write-Host "Python not found. Trying with Node.js..." -ForegroundColor Yellow
    npx http-server -p 8080
}

