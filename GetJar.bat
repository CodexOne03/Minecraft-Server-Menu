@echo off
for %%x in (*.jar) do SET jar=%%x

:Tell
echo ********
echo Jar file found = %jar% . Is it correct?
echo yes/no
echo ********
set /p JarF=--^>
if "%JarF%" == "yes" goto :Yes
if "%JarF%" == "no" goto :Write

:Yes
@echo %jar% > jar.txt
goto :End

:Write
echo ********
set /p Name=Write the name of the file: 
echo %Name% > jar.txt

:End
echo Jar file correctly set
echo You can now close this and start the file Run.bat
pause