echo off
rem build jod.pdf (jod.tex) is root file 
title Running JOD/LaTeX  ...

latex jod
bibtex jod
makeindex jod
latex jod
latex jod
dvips jod
ps2pdf jod.ps

rem copy jod.pdf to jodsvn directory & working jod directories
copy jod.pdf c:\jaddons\general\joddocument\pdfdoc\jod.pdf
if exist C:\j701\addons\general\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\j701\addons\general\joddocument\pdfdoc\jod.pdf
if exist C:\j602\addons\general\joddocument\pdfdoc\jod.pdf copy jod.pdf C:\j602\addons\general\joddocument\pdfdoc\jod.pdf

rem display pdf 
title JOD/LaTeX complete displaying PDF ...
"C:\Program Files\SumatraPDF\SumatraPDF.exe" jod.pdf