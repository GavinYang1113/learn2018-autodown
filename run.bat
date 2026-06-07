@echo off
chcp 65001 >nul
cd /d "%~dp0"

set "APP=learn-windows.exe"
if not exist "%APP%" set "APP=learn.exe"

if exist "%APP%" (
  "%APP%" --multi --all
) else (
  echo 未找到 %APP%。
  echo 请确认本文件和 learn-windows.exe 在同一个文件夹中。
)

echo.
pause
