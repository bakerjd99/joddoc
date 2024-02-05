![](/jodgraphics/jodtinycube2.png) [`joddoc` README](http://bakerjd99.wordpress.com/the-jod-page/)
===============================================================================================

This repository contains the `LaTeX` source and supporting
graphics files for building the JOD manual [`jod.pdf`](https://bakerjd99.files.wordpress.com/2024/02/jod.pdf).

`jod.pdf` is distributed by the [Pacman](https://code.jsoftware.com/wiki/Pacman) J addon 
[`joddocument`](http://www.jsoftware.com/jwiki/Addons/general/joddocument).

A printed and bound manual version is available on
[Amazon](https://www.amazon.com/dp/B08M2KBMND). Amazon varies from country to
country; search your Amazon in books for ISBN-13: 979-8554921117.
You can also search with Amazon's ASIN key B08M2KBMND.

Building `jod.pdf` requires a current `LaTeX` distribution.
I mainly use [MikTeX 2.9](http://www.miktex.org/) on Windows but I have tested
building `jod.pdf` on Linux and macOS using [TeX Live](http://www.tug.org/texlive/).
`jod.pdf` can also be built on [OverLeaf.com](https://OverLeaf.com). This
repository is synched with an OverLeaf project and OverLeaf is used
to prepare Amazon print PDFs.

The following sequence of commands builds `jod.pdf`.

        latex jod
        bibtex jod
        makeindex jod
        latex jod
        makeindex jod
        latex jod
        dvips jod
        ps2pdf jod.ps

See the shell scripts [`0ajod.bat`](https://github.com/bakerjd99/joddoc/blob/master/0ajod.bat) and
[`0ajod.sh`](https://github.com/bakerjd99/joddoc/blob/master/0ajod.sh).

John Baker
February 5, 2024
