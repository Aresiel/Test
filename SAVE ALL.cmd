@echo off
cls


echo ------------------
echo  Save Initalized
echo ------------------
git add *
git commit -m "Automated (All) Save"
git push -u origin master
echo ------------------
echo  Save Completed
echo ------------------
pause
exit