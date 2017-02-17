@echo off
echo TEST
color E
title DUCK.bat
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

:ducksignin
cls
IF NOT EXIST "\DATA\duckname.txt" goto SIGNUP
IF NOT EXIST "\DATA\duckpass.txt" goto SIGNUP
goto LOGIN

:SIGNUP
cls
echo ----------------------------
echo           SignUp
echo ----------------------------
echo.
set/p "duckname=Enter Username: "
set/p "duckpass=Enter Password: "
echo.
echo.
IF %duckname% == "" goto SIGNUPERROR
IF %duckpass% == "" goto SIGNUPERROR
goto CREATEACC

:SIGNUPERROR
cls
echo ----------------------------
echo           Error
echo ----------------------------
echo Invalid Username Or Password
pause
goto SIGNUP

:CREATEACC
cls
echo %duckname% >> \DATA\duckname.txt
echo %duckpass% >> \DATA\duckpass.txt
attrib "\DATA\duckname" +s +h
attrib "\DATA\duckpass" +s +h
goto LOGIN

:LOGIN
cls
set/p duckname= < \DATA\duckname.txt
set/p duckpass= < \DATA\duckpass.txt
cls
echo ----------------------------------
echo              Login
echo ----------------------------------
echo.
echo.
set/p "ducknameI=_        Username: "
set/p "duckpassI=_        Password: "
echo.
if %ducknameI% == "" goto LOGINERROR
if %duckpassI% == "" goto LOGINERROR
if not %ducknameI% == %duckname% goto LOGINERROR
if not %duckpassI% == %duckpass% goto LOGINERROR
goto LOADING

:LOGINERROR
cls
echo -------------------------------
echo             Error
echo -------------------------------
echo Invalid Username Or Password
pause
goto LOGIN


:LOADING
set load=%load%!!!!!!
cls
echo ----------------------------------
echo              Login
echo ----------------------------------
echo.
echo.
echo         Username: %ducknameI%
echo         Password: %duckpassI%
echo.
echo.
echo    ===================================
echo    %load%
echo    ===================================
echo.
echo.
ping localhost -n 2 >nul
set/a loadnum=%loadnum% +1
if %loadnum% == 5 goto DONE
goto LOADING

:DONE
cls
echo -----------------------------------
echo                Done
echo -----------------------------------
echo.
echo        #
echo       #
echo  #   #      Login Successfully
echo   # #
echo    #
echo.
echo.
echo -----------------------------------
pause
goto MainMenu




 









































