#!/bin/bash
#
#

find . -name "*.[ch]" > cscope.files
cscope -b -q -k
