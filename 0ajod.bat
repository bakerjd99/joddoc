echo off
rem build jod.pdf (jod.tex) is root file 
title Running JOD/LaTeX  ...

latex jod
bibtex jod
makeindex jod
latex jod
makeindex jod
latex jod
dvips jod

if exist jod.pdf erase jod.pdf
ps2pdf jod.ps
if not exist jod.pdf goto TheEnd

rem copy jod.pdf to working jod directories
if exist C:\j64\j64-806\addons\general\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\j64\j64-806\addons\general\joddocument\pdfdoc\jod.pdf
if exist C:\j64\j64-807\addons\general\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\j64\j64-807\addons\general\joddocument\pdfdoc\jod.pdf
if exist C:\j32\j602\addons\general\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\j32\j602\addons\general\joddocument\pdfdoc\jod.pdf

rem update stage and svn release directories
if exist C:\jod\joddev\alien\stage\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\jod\joddev\alien\stage\joddocument\pdfdoc\jod.pdf
if exist C:\jrelease\jaddons\general\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\jrelease\jaddons\general\joddocument\pdfdoc\jod.pdf

rem display pdf 
title JOD/LaTeX complete displaying PDF ...
if exist C:\uap\sumatra\SumatraPDF.exe goto Location0 
if exist C:\PROGRA~2\SumatraPDF\SumatraPDF.exe goto Location1
goto TheEnd

:Location0
    C:\uap\sumatra\SumatraPDF.exe jod.pdf
    goto TheEnd
:Location1
    C:\PROGRA~2\SumatraPDF\SumatraPDF.exe jod.pdf
    goto TheEnd

:TheEnd