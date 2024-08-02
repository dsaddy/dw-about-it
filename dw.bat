@echo off
setlocal enabledelayedexpansion

set /a num1=%random% %% 100
set /a num2=%random% %% 100
set /a num3=%random% %% 100

start cmd /k echo Random Message Window 1: %num1%
start cmd /k echo Random Message Window 2: %num2%
start cmd /k echo Random Message Window 3: %num3%
