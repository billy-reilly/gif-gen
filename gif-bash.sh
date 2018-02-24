#!/bin/bash

echo
echo What is the name of the screencast you wish to gif-ify?
echo \(don\'t include the .mov bit\)
echo
read NAME

if [ ! -e screencasts/$NAME.mov ]
then
    echo
    echo $NAME does not exist in the screencasts directory
    echo
    exit 1
fi

ffmpeg -y -i screencasts/$NAME.mov -vf fps=10,palettegen $NAME-palette.png
ffmpeg -i screencasts/$NAME.mov -i $NAME-palette.png -filter_complex "fps=10,paletteuse" gifs/$NAME.gif
rm $NAME-palette.png

if [ -e gifs/$NAME.gif ]
then
    echo
    echo $'\360\237\215\273'\ \ Cheers, $NAME has successfully been converted to a gif
    echo
    exit 0
fi

if [ ! -e gifs/$NAME.gif ]
then
    echo
    echo Error: $NAME has not been converted into a gif
    echo
    exit 1
fi