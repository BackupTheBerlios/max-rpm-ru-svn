#!/bin/sh

aclocal
automake -a -c
autoconf

if [ "$1" = "--noconfigure" ]; then 
    exit 0;
fi

./configure "$@"
