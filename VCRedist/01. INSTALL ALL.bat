@echo off
:: -- Check Run As Administrator --
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo.
    echo Grant Run As Administrator...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

CD /d %~dp0

echo.
echo VCRedistAIO 2025.06.10
echo Script by W1zzard @ TechPowerUp
echo Packed by xyzsteven
echo.
echo Installing runtime packages...

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo 2005...
start /wait vcredist.2005.SP1.EOL-8.0.SP1.x86 /q

echo 2008...
start /wait vcredist.2008.SP1.EOL-9.0.SP1-30729.5677.x86 /qb

echo 2010...
start /wait vcredist.2010.SP1.EOL-10.0.SP1-40219.325.x86 /passive /norestart

echo 2012...
start /wait vcredist.2012.Update4.EOL-11.0.61030.0.x86 /passive /norestart

echo 2013...
start /wait vcredist.2013.EOL.12.0.40664.0.x86 /passive /norestart

echo 2015, 2017, 2019 ^& 2022...
start /wait vcredist.2015.2017.2019.2022-14.44.35208.0.x86 /passive /norestart

goto END

:X64

echo 2005...
start /wait vcredist.2005.SP1.EOL-8.0.SP1.x86 /q
start /wait vcredist.2005.SP1.EOL-8.0.SP1.x64 /q

echo 2008...
start /wait vcredist.2008.SP1.EOL-9.0.SP1-30729.5677.x86 /qb
start /wait vcredist.2008.SP1.EOL-9.0.SP1-30729.5677.x64 /qb

echo 2010...
start /wait vcredist.2010.SP1.EOL-10.0.SP1-40219.325.x86 /passive /norestart
start /wait vcredist.2010.SP1.EOL-10.0.SP1-40219.325.x64 /passive /norestart

echo 2012...
start /wait vcredist.2012.Update4.EOL-11.0.61030.0.x86 /passive /norestart
start /wait vcredist.2012.Update4.EOL-11.0.61030.0.x64 /passive /norestart

echo 2013...
start /wait vcredist.2013.EOL.12.0.40664.0.x86 /passive /norestart
start /wait vcredist.2013.EOL.12.0.40664.0.x64 /passive /norestart

echo 2015, 2017, 2019 ^& 2022...
start /wait vcredist.2015.2017.2019.2022-14.44.35211.0.x86 /passive /norestart
start /wait vcredist.2015.2017.2019.2022-14.44.35211.0.x64 /passive /norestart

goto END

:END

echo.
echo Installation completed successfully

exit
