#!/bin/sh

PWD=`pwd`
PROJECT=`basename $PWD`

TARGET=$1

case $TARGET in
'')
	pli -o $PROJECT $PROJECT.pli -qtest -qnocompile'(e)' -qmacro -qmdeck -qmargins'(1,200)'
	;;
clean)
	rm -f $PROJECT *.dek *.lst *.map *.o
	;;
release)
	pli -o $PROJECT $PROJECT.pli -qoptimize'(3)' -qnocompile'(e)' -qmacro -qmargins'(1,200)'
	;;
esac
