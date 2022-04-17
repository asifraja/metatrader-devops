@echo off

    set METAEDITOR="metaeditor64.exe"
    set "LOGFILE=%~dpn1.log"

    if "%~1"=="" (
        echo "You must specify the first parameter to this batch file."
        goto end
    )

    :: Compile the MQL5 way
    %METAEDITOR% /compile:%1 /log /portable
    :: 0 = failed
    :: 1 = everything good
    echo "Error level %ERRORLEVEL%"

    :: This dumps the log file to stdout so it can be seen.
    :: It's assumed to be in the same directory as the expert file.
    type "%LOGFILE%"

    :: Once shown, get rid of the .log file.
    ::erase "%LOGFILE%"    

:end
    :: If I want the CMD.exe window to go away, use exit
    ::exit %ERRORLEVEL%