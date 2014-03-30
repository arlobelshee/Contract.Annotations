@echo off

mkdir build
del /q build\*.*

echo Packing Contract.Annotations...
pushd Contract.Annotations
call Package.bat
if ERRORLEVEL 1 goto failed
popd




goto done


:failed

popd

echo.
echo.
echo An error occurred
pause

:done
