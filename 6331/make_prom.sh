#!/bin/bash

DIR=`dirname $0`
UTILDIR=$DIR/../utils
$UTILDIR/bin_to_byte_table.sh $1 32 | sed -e '/@@TABLE@@/r /dev/stdin' -e '/@@TABLE@@/d' 32x8prom.template > 32x8prom.pld
