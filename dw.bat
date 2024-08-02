@echo off
setlocal enabledelayedexpansion

set bytes=0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()_+=-[]{}|;':",./<>?
set bytesLength=62

rem Calculate how many characters to display for approximately 1 MB (adjust as needed)
set /a charsPerWindow=1024 * 1024 / 2  

:loop
if not defined num100 (
    set bytesString=
    for /l %%x in (1, 1, %charsPerWindow%) do (
        set /a randomIndex=!random! %% bytesLength
        set bytesString=!bytesString!!bytes:~!randomIndex!,1!
    )

    start cmd /k "echo Stress Test Window !num_index!: & echo !bytesString! & (for /l %%x in (1,1,50000000) do (for /l %%y in (1,1,10000) do set /a result=%%x*%%y))"
    set /a num_index+=1
    goto loop
)
