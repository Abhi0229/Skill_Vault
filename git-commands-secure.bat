@echo off
echo Updating GitHub repository (excluding sensitive files)...
echo.

echo Step 1: Removing .env from git tracking...
git rm --cached .env

echo Step 2: Adding all other files...
git add .

echo Step 3: Committing changes...
git commit -m "Setup complete: Added configuration files and database setup (excluding .env)"

echo Step 4: Pushing to GitHub...
git push origin main

echo.
echo Done! Changes pushed to GitHub (without sensitive .env file).
pause