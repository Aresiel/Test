@echo off
echo TEST
cls


:ducklogin
cls
echo ----------------
echo    Welcome to
echo     DUCK.bat
echo ----------------
echo  (1) Log In
echo  (2) Shut Off
echo  (3 - Dev Only) save
set/p "ducklogin=Input: "


if %ducklogin% == 1 goto ducksignin 
if %ducklogin% == 2 exit
if %ducklogin% == 3 goto dev_save
pause
goto ducklogin


:dev_save
cls
git add DUCK.bat
git commit -m "Automated (DUCK.bat) Save"
git push -u origin master
echo -----------------
echo  Save Completed
echo -----------------
pause
goto :ducklogin