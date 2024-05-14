@echo off

setlocal enabledelayedexpansion

echo ... Create Next.js Project ...

:Ask
set "INPUT="
set /P "INPUT=Enter a name for your Next.js project (minimum 5 lower case characters): "

IF "!INPUT!" EQU "" (
    echo PROJECT NAME CANNOT BE EMPTY

    GOTO  Ask
)

IF "!INPUT:~4!" EQU "" (
	
    echo THE NAME YOU ENTERED IS TOO SHORT. PLEASE ENTER AT LEAST 5 LOWER CAP CHARACTES
	
    GOTO  Ask
)

echo Your Next.js project name is: !INPUT!

SET /P "AREYOUSURE=Are you sure you want to proceed (Y/N)? "
IF /I "!AREYOUSURE!" NEQ "Y" GOTO END

echo ... Installing the latest Next.js project ...

npx create-next-app@latest !INPUT! --typescript --tailwind --eslint
GOTO END

:END
endlocal
