#!/bin/bash

#Quest1:
#archive="$1"
#tar -xzvf $archive
#Q2:
dir=$1
dep=`cd $dir`
archives=`ls *.tgz`
echo $archives
for i in $archives;do
	echo "$1"
#	tar -xzvf $1
done;

