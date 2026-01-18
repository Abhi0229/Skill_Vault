@echo off
echo Updating GitHub repository with all changes...
echo.

echo Step 1: Adding all files to git...
git add .

echo.
echo Step 2: Committing changes...
git commit -m "Setup complete: Added .env configuration and database setup"

echo.
echo Step 3: Pushing to GitHub...
git push origin main

echo.
echo Done! All changes have been pushed to GitHub.
pause