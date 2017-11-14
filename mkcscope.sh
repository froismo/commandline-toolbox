#!/bin/bash
#
#

find . -name "*.[ch]" > cscope.files
find . -name "*.[ch]pp" >> cscope.files

cscope -b -q -k
