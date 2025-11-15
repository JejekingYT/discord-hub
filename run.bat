@echo off
REM Navigate to your ReType project folder
cd /d "C:\Users\Jerome\Desktop\Website"

REM Start the ReType site in the background
start cmd /k "retype watch"

REM Give ReType a few seconds to start
timeout /t 5

REM Start Cloudflared tunnel
cloudflared tunnel --url http://localhost:5001

pause
