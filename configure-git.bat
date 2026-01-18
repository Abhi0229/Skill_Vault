@echo off
echo Configuring Git for first time use...
echo.
set /p username="Enter your GitHub username: "
set /p email="Enter your GitHub email: "

git config --global user.name "%username%"
git config --global user.email "%email%"

echo.
echo ✅ Git configured successfully!
echo Username: %username%
echo Email: %email%
echo.
echo Now you can run: git-commands-secure.bat
pause