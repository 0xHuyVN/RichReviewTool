@echo off
echo =======================================
echo Dang chuan bi day code len ForgeX...
echo =======================================

:: Kiem tra neu thu muc nay chua khoi tao Git thi se tu dong khoi tao
if not exist .git (
    echo [1/4] Khoi tao Git lan dau...
    git init
    git remote add origin https://github.com/0xHuyVN/ForgeX.git
) else (
    echo [1/4] Git da duoc khoi tao.
)

echo [2/4] Dang gom cac file thay doi...
git add .

echo [3/4] Dang tao Commit...
set commit_msg=Auto update: %date% %time%
git commit -m "%commit_msg%"

:: Dam bao dang o nhanh main
git branch -M main

echo [4/4] Dang push code len https://github.com/0xHuyVN/ForgeX...
git push -u origin main

echo.
echo =======================================
echo UP CODE LEN GITHUB THANH CONG!
echo =======================================
pause