@echo off

::Move to this program's location
cd "%~dp0"
if exist ext\ (
    cd ext
) else (
    md ext
    cd ext
)
echo Extracting...
tar -xf "%1"
cd assets
if exist Data.rsdk.xmf (
    move Data.rsdk.xmf "%~dp0"
) else (
    cls
    echo Data.rsdk couldn't be found
    echo Make sure you're using the right apk file
    pause
    goto end
)
cd ..
cd ..
rename Data.rsdk.xmf Data.rsdk
rmdir /q /s ext

cls
echo Data.rsdk has been found
echo If you want to use mods, you'll need retrun, which you can find at
echo https://github.com/Lavesiime/retrun
pause

:end