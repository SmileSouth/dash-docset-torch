#!/bin/bash -e
# File: gen-html.sh
# Author: Yuxin Wu <ppwwyyxx@gmail.com>

PROG=`readlink -f $0`
DIR=`dirname $PROG`
cd $DIR

function work {
  echo "Processing $1 ..."
	if [ -d $1 ]; then
		cd $1 && git pull && cd $DIR
	else
		git clone https://github.com/torch/"$1".git --depth 1
	fi

	for i in $1/doc/*.md; do
		cp -vn $i ./$1-`basename $i`
	done
}

work torch7
work nn
work optim
work paths
work image
work cunn

for i in *.md; do
	echo $i
	grip --export "$i"
done

mv *.html ../html
