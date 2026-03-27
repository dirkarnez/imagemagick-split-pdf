@echo off

set PATH=^
%~dp0ImageMagick-7.1.2-18-portable-Q16-HDRI-x64;

set "filename_with_extension=%~nx1"
set "filename=%~n1"

echo Splitting the pdf "%filename_with_extension%" &&^
magick.exe -density 300 -colorspace sRGB "%~f1[1-68]" -crop 2x1@ +repage -scene 1 -quality 100 "%filename%_split_%%d.jpg" &&^
echo DONE &&^
pause
