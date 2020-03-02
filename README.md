![](/jodgraphics/jodtinycube2.png) [`joddoc` README](http://bakerjd99.wordpress.com/the-jod-page/)
===============================================================================================

This repository contains the `LaTeX` source and supporting
graphics files for building the JOD manual [`jod.pdf`](https://bakerjd99.files.wordpress.com/2019/12/jod.pdf).

`jod.pdf` is distributed by the [Pacman](https://code.jsoftware.com/wiki/Pacman) J addon 
[`joddocument`](http://www.jsoftware.com/jwiki/Addons/general/joddocument).
A printed and bound manual version is available on 
[Lulu](http://www.lulu.com/shop/john-baker/jod-j-object-dictionary/paperback/product-20076245.html).

Building `jod.pdf` requires a current `LaTeX` distribution.
I mainly use [MikTeX 2.9](http://www.miktex.org/) on Windows but I have tested
building `jod.pdf` on Linux using [TeX Live](http://www.tug.org/texlive/).

The following sequence of commands builds `jod.pdf`.

        latex jod
        bibtex jod
        makeindex jod
        latex jod
        makeindex jod
        latex jod
        dvips jod
        ps2pdf jod.ps

See the batch file [`0ajod.bat`](https://github.com/bakerjd99/joddoc/blob/master/0ajod.bat).

John Baker
March 2, 2020
