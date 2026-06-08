@echo off
echo =======================================
echo Dang chuan bi day code len ForgeX...
echo =======================================

:: Ep nhan dung repo ForgeX de tranh bi nham sang RichReviewTool
git remote set-url origin https://github.com/0xHuyVN/ForgeX.git

echo [1/3] Dang gom cac file thay doi...
git add .

echo [2/3] Dang tao Commit...
set commit_msg=Auto update: %date% %time%
git commit -m "%commit_msg%"

:: Dam bao dang o nhanh main
git branch -M main

:: Tu dong dong bo neu tren GitHub co code moi hon
echo Kiem tra va keo code moi tu GitHub ve (neu co)...
git pull origin main --rebase

echo.
echo [3/3] Dang push code len ForgeX...
git push -u origin main

:: Kiem tra neu lenh push bi loi
if %errorlevel% neq 0 (
    echo.
    echo =======================================
    echo   [X] LOI: KHONG THE PUSH CODE LEN!
    echo   Vui long kiem tra lai mang hoac dinh dang.
    echo =======================================
) else (
    echo.
    echo =======================================
    echo   [O] UP CODE LEN GITHUB THANH CONG!
    echo =======================================
)

pause