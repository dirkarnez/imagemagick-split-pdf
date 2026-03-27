@echo off

set PATH=^
%~dp0ImageMagick-7.1.2-18-portable-Q16-HDRI-x64;

set "filename_with_extension=%~nx1"
set "filename=%~n1"

echo Splitting the pdf "%filename_with_extension%" &&^
magick.exe -density 300 -colorspace sRGB "%~f1[68]" -quality 100 "%filename%_split_137.jpg" &&^
echo DONE &&^
pause
