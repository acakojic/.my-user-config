#!bin/sh

echo ".bash_aliases" >> startup.txt

if [ -f ~/.Xresources ]; then
   #xrdb -merge .Xresources
    xrdb .Xresources
fi
