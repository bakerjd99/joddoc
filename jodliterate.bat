rem sequence of latex commands that generate PDF
rem assumes latex exes are on the working path
setlocal
cd /d %~dp0
lualatex  jodliterate
makeindex jodliterate
lualatex  jodliterate
lualatex  jodliterate
endlocal
