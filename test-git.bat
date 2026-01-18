@echo off
echo Testing Git installation...
git --version
if %errorlevel% equ 0 (
    echo ✅ Git is installed successfully!
    echo.
    echo Now run: git-commands-secure.bat
) else (
    echo ❌ Git is not installed or not in PATH
    echo Please restart PowerShell after installing Git
)
pause