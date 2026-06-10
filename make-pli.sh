#!/bin/sh

PWD=`pwd`
PROJECT=`basename $PWD`

TARGET=$1

case $TARGET in
'')
	pli $PROJECT.pli -qmargins'(1,200)'
	;;
clean)
	rm -f *.o *.lst *.map $PROJECT
	;;
esac
