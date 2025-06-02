set source= TwsApiL0
set exe=%source%_64
TASKLIST | FINDSTR /| "%exe%"
IF ERRORLEVEL 1 (echo "%exe%" is not running) ELSE (taskkil /F /IM %exe%.exe)
cd C:\TwsApiCpp-master\TwsApiC++\source
g++ -D_WIN64 -D CorrectAfxWinIncluded -shared -static -static-libgcc -static-libstdc++ -s -std=gnu++20 %source%