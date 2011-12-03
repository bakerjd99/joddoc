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

rem display pdf 
title JOD/LaTeX complete displaying PDF ...
"C:\Program Files\SumatraPDF\SumatraPDF.exe" jod.pdf