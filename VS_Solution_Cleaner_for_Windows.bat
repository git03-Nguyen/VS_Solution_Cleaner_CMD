@echo off

echo AUTO-DELETE DATABASE ^& DEBUGGING FILES IN VISUAL STUDIO SOLUTIONS
echo  REMEMBER TO PUT THIS .exe FILE IN THE SOLUTION'S DIRECTORY
echo ----------------------------------------------
echo Current directory:
cd
echo Ready to go?
pause
echo(

echo ----------------------------------------------
if exist *.sdf (del /s *.sdf)
echo Deleted files *.sdf

echo .............
if exist .vs (rmdir /s /q .vs)
echo Deleted folder .vs

echo..............
if exist Debug (rmdir /s /q Debug)
if exist x64 (rmdir /s /q x64)

for /d %%d in (*.*) do (
cd %%d
if exist Debug (rmdir /s /q Debug)
if exist x64 (rmdir /s /q x64)
cd ..
)

echo Deleted debugging folders

echo ----------------------------------------------

echo(
echo COMPLETED! HOPE THIS WILL WORK :v 
echo By dk******ml@@
pause
