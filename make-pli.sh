#!/bin/sh

PWD=`pwd`
PROJECT=`basename $PWD`

PLIOPTS="-qnocompile(e) -qnot=! -qmacro -qmdeck -qmargins(1,200)"

TARGET=$1

case $TARGET in
'')
	pli -o $PROJECT $PROJECT.pli -qtest $PLIOPTS
	;;
clean)
	rm -f $PROJECT *.dek *.lst *.map *.o
	;;
release)
	pli -o $PROJECT $PROJECT.pli -qoptimize'(3)' $PLIOPTS
	;;
esac
