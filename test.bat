@echo off
cd "%~dp0"
md ext
tar -xf C:\Users\s620154\Downloads\G\AIR\2013\a1\ext\file.zip
goto end
setlocal
cd /d %~dp0
rename %1  file.zip
Call :UnZipFile "C:\Temp\" "%~dp1\file.zip"
exit /b


:end