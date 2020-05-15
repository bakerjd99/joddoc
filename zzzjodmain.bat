rem sequence of latex commands that generate PDF
rem assumes commands are on the working path
lualatex  zzzjodmain
makeindex zzzjodmain
lualatex  zzzjodmain
lualatex  zzzjodmain
