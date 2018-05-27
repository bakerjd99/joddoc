echo off
rem test new graphics files
title Running testgraphic  ...

latex testgraphic
dvips testgraphic

if exist testgraphic.pdf erase testgraphic.pdf
ps2pdf testgraphic.ps
if not exist testgraphic.pdf goto TheEnd

title displaying PDF ...
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