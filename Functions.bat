:: Routing the arguments passed to this batch script
call:%*
exit /b

:GetFileSize
:: %1 argument
:: %2 return value
SETLOCAL
ENDLOCAL&set "%2=%~z1"
exit /b 0

:GetLinesInFile
:: %1 Path of file
:: %2 lines in the file (return value)
SETLOCAL
set "cmd=findstr /R /N "^^" %1 | find /C ":""
for /f %%a in ('!cmd!') do set number=%%a
ENDLOCAL&set "%2=%number%"
exit /b 0
