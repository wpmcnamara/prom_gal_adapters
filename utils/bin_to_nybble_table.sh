#!/bin/bash
echo "table address => nybble {"
dd if=$1 bs=$2 conv=sync count=1 2>/dev/null |xxd -c 1 -- | sed "s/^0\+\([0-9a-f]\+\): [0-9a-f]\+\([0-9a-f]\).*/\1 => \2;/"
echo "}"
