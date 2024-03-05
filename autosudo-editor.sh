#!/bin/sh
if [ -z $1 ]; then
    exit 1
fi
file=$1
editor=/usr/bin/vim
if [ -e $file ]; then
        if [ -r $file ] && [ -w $file ]; then
                $editor $file
        else
                sudoedit $file
        fi
else
        if touch $file ; then
                rm $file
                $editor $file
        else
                sudoedit $file
        fi
fi
