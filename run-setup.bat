@echo off
echo Setting up Skill Vault database...
echo.

echo Step 1: Testing database connection...
node dev-tools/test-db-connection.js
if %errorlevel% neq 0 (
    echo Database connection failed. Please check your PostgreSQL installation and .env file.
    pause
    exit /b 1
)

echo.
echo Step 2: Setting up database and tables...
node database/setup-database.js
if %errorlevel% neq 0 (
    echo Database setup failed.
    pause
    exit /b 1
)

echo.
echo Step 3: Starting the server...
node server/server.js