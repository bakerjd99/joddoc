rem sequence of latex commands that generate PDF
rem assumes commands are on the working path
lualatex  jodliterate
makeindex jodliterate
lualatex  jodliterate
lualatex  jodliterate
