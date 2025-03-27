@echo off
echo Restoring deleted files from HEAD...
git restore --source=HEAD :/
echo.
echo Fixing invalid directory path...
mkdir -p .github\workflows
echo.
echo Done! Check status with 'git status'