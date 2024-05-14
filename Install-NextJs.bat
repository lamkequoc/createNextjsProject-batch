@echo off
:Ask
set INPUT=
set /P INPUT=Would you like to name your NextJs project? %=%
echo your Nextjs name is: %INPUT%
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
echo ... installing latest Nextjs project ...

npx create-next-app@latest %INPUT% --typescript --tailwind --eslint

:END
endlocal