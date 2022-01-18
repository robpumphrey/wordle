#!/bin/bash

WORDS=/usr/share/dict/words

if [ "$#" -gt 0 ]; then
  exclude=`echo $1 | sed 's/[^a-z]//g' | sed -e 's/\([a-z]\)/| grep -v \1 /g'`
fi
if [ "$#" -gt 1 ]; then
  include=`echo $2 | sed 's/[^a-z]//g' | sed -e 's/\([a-z]\)/| grep \1 /g'`
fi
if [ "$#" -gt 2 ]; then
  match="^$3\$"
else
  match='^.....$'
fi
cmd="cat $WORDS | grep -v \"'\" | grep '$match' $exclude $include"

echo $cmd
eval $cmd
