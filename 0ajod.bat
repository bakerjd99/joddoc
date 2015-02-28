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
if exist C:\uap\j64-803\addons\general\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\uap\j64-803\addons\general\joddocument\pdfdoc\jod.pdf 
if exist C:\j602\addons\general\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\j602\addons\general\joddocument\pdfdoc\jod.pdf

rem display pdf 
title JOD/LaTeX complete displaying PDF ...
if exist C:\uap\sumatra\SumatraPDF.exe goto Location0 
goto TheEnd

:Location0
    C:\uap\sumatra\SumatraPDF.exe jod.pdf
    goto TheEnd

:TheEnd