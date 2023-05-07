@echo off
set /p folder="Введіть шлях до каталогу: "
set /p year="Введіть рік (4 цифри): "
set /p month="Введіть місяць (01-12): "
set /p day="Введіть день (01-31): "
set /p hour="Введіть годину (00-23): "
set /p minute="Введіть хвилину (00-59): "
set /p second="Введіть секунду (00-59): "

for %%i in ("%folder%\*.*") do (
    echo Зміна дати і часу створення файлу: %%i
    echo %year%/%month%/%day% %hour%:%minute%:%second% > "%~dpi\temp.txt"
    copy /b "%~dpi\temp.txt"+"%%~nxi" "%~dpi\temp"
    del "%%i"
    ren "%~dpi\temp" "%%~nxi"
)

del "%~dpi\temp.txt"
echo Готово!