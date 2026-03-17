@echo off
setlocal

for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd_HH-mm-ss"') do set datetime=%%i

echo =========================
echo Build time: %datetime%
echo =========================

git add .
git commit -m "build %datetime%"

for /f %%i in ('git rev-list --count HEAD') do set commits=%%i

echo Current commits: %commits%

if %commits% GTR 5 (
    echo Keeping last 5 commits...
    git reset --soft HEAD~5
    git commit -m "update build %datetime%"
) else (
    echo Not enough commits, skipping cleanup
)

git push -f origin master

echo =========================
echo Done
echo =========================
pause