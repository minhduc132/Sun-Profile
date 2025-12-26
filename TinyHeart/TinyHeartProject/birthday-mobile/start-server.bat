@echo off
echo Starting local server...
echo.
echo Server will run on http://localhost:8080
echo Press Ctrl+C to stop the server
echo.
cd /d "%~dp0"
python -m http.server 8080
if errorlevel 1 (
    echo.
    echo Python not found. Trying with Node.js...
    npx http-server -p 8080
)

