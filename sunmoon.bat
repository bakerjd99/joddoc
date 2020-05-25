rem sequence of latex commands that generate PDF
rem assumes latex exes are on the working path
setlocal
cd /d %~dp0
lualatex  sunmoon
makeindex sunmoon
lualatex  sunmoon
lualatex  sunmoon
endlocal
