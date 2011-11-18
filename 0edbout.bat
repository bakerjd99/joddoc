echo off
title Running Dropbox to JOD.PDF source copy ...
pushd
setlocal

rem copy from the proper directory
set dbdir=C:\db\Dropbox\jodpdf
if "%CD%" == "%dbdir%" goto TestFiles
  echo ERROR: not in proper directory %CD%
  goto Exception01
:TestFiles
if exist "%dbdir%\*.tex" set dbpath=C:\jod\j701\joddev\document\
if "%dbpath%" == "" goto Exception01

rem copy source files 
copy /y *.tex %dbpath%
copy /y *.bat %dbpath%
copy /y *.sh %dbpath%
copy /y .gitignore %dbpath%
copy /y *.bib %dbpath%
copy /y *.pdf %dbpath%
copy /y jodgraphics %dbpath%jodgraphics\

title Dropbox to JOD.PDF complete!
goto TheEnd

:Exception01
echo ERROR: no JOD.PDF Dropbox source or wrong directory - nothing copied!
title Dropbox to JOD.PDF abended!
pause
goto TheEnd

:TheEnd
endlocal
popd
rem pause