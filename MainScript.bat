@ECHO OFF
setlocal enabledelayedexpansion

echo Food summary:
for %%f in (FoodTypes\*.txt) do (
	call :writeSummary %%f
)

PAUSE
exit /b 0


:writeSummary  Str
:: Prints number of lines and size

set linesInFile=
call Functions.bat GetLinesInFile %1 linesInFile

set bytesInFile=
call Functions.bat GetFileSize %1 bytesInFile

echo %linesInFile% %~n1 types logged - %bytesInFile% bytes

exit /b 0