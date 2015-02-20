#!/bin/sh

case $1 in
        off)
                
                setxkbmap -option caps:swapescape
                ;;
        on)
                
                setxkbmap -option
                ;;
       
esac
