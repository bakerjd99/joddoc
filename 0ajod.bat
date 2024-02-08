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

if not exist C:\j64\j950\addons\general\joddocument\pdfdoc\jod.pdf goto Location2
if not exist C:\j64\j960\addons\general\joddocument\pdfdoc\jod.pdf goto Location2
if not exist C:\jod\j950\joddev\alien\jodgit\joddocument\pdfdoc\jod.pdf goto Location2
if not exist C:\jrelease\jaddons\general\joddocument_rel\pdfdoc\jod.pdf goto Location2

rem copy jod.pdf to working jod directories
if exist C:\j64\j950\addons\general\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\j64\j950\addons\general\joddocument\pdfdoc\jod.pdf
if exist C:\j64\j960\addons\general\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\j64\j960\addons\general\joddocument\pdfdoc\jod.pdf

rem update stage and git release directories
if exist C:\jod\j950\joddev\alien\jodgit\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\jod\j950\joddev\alien\jodgit\joddocument\pdfdoc\jod.pdf
if exist C:\jrelease\jaddons\general\joddocument_rel\pdfdoc\jod.pdf copy jod.pdf C:\jrelease\jaddons\general\joddocument_rel\pdfdoc\jod.pdf

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
:Location2
    echo jod.pdf distribution paths not set or invalid - edit and rerun
	pause
	goto TheEnd

:TheEnd