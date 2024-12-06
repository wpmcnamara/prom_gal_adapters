#!/bin/bash

DIR=`dirname $0`
UTILDIR=$DIR/../utils
$UTILDIR/bin_to_nybble_table.sh $1 256 | sed -e '/@@TABLE@@/r /dev/stdin' -e '/@@TABLE@@/d' 256x4prom.template > 256x4prom.pld
