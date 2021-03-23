#!/bin/sh

case $@ in
    http*://*)
        curl -o sxivimage -s "$@"
        sxiv sxivimage
        rm sxivimage
        ;;
    *)
        sxiv $@
        ;;
esac
