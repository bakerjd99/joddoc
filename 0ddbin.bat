echo off
title Running JOD.PDF to Dropbox source copy ...
pushd
setlocal

rem copy from the proper directory
set dbdir=C:\jod\j701\joddev\document
if "%CD%" == "%dbdir%" goto TestFiles
  echo ERROR: not in proper directory %CD%
  goto Exception01
:TestFiles
if exist "%dbdir%\*.tex" set dbpath=C:\db\Dropbox\jodpdf\
if "%dbpath%" == "" goto Exception01

rem copy source files 
copy /y *.tex %dbpath%
copy /y *.bat %dbpath%
copy /y *.sh %dbpath%
copy /y .gitignore %dbpath%
copy /y *.bib %dbpath%
copy /y *.pdf %dbpath%
copy /y jodgraphics %dbpath%jodgraphics\

title JOD.PDF to Dropbox complete!
goto TheEnd

:Exception01
echo ERROR: not in JOD.PDF project directory - nothing copied!
title JOD.PDF to Dropbox abended!
pause
goto TheEnd

:TheEnd
endlocal
popd
rem pause