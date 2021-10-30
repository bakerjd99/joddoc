#!/bin/sh
# build jod.pdf (jod.tex) is root file 
# run in macos terminal with $bash 0ajod.sh
echo "Running JOD/LaTeX  ..."

latex jod

#run bibtex manually on macos
#bibtex jod
#makeindex jod

latex jod
makeindex jod
latex jod

# dvips & ps2pdf must be run manually on macos - not sure why
echo "reminder: run dvips & ps2pdf"

#dvips jod.dvi
#ps2pdf jod.ps