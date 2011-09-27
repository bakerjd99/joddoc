rem build jod.pdf (jod.tex) is root file 
latex jod
bibtex jod
makeindex jod
latex jod
latex jod
dvips jod
ps2pdf jod.ps

rem display pdf 
"C:\Program Files\SumatraPDF\SumatraPDF.exe" jod.pdf