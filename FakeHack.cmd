@echo off
color 0a
cls


echo 1. Place This File In C:\
echo 2. Press F11
pause
goto tree


:tree
tree
timeout /t 2 /nobreak >nul
cls
goto tree
