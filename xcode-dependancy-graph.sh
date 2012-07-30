#!/bin/zsh
#
# Silly utilitie that graphs file based dependancies in the dot format.
#
# Execute script inside $PROJ_BUILD/$PROJ_NAME/Build/Intermediates/$PROJ_NAME.build/Debug-????/$PROJ_NAME.build/Objects-normal/$ARCH
#
# you can view the output with ZGRViewer
#
grep "h " *.d | grep -v SBJson | awk 'BEGIN{FS="/"; print "digraph vclib \{"}{print $1,$NF}END{print "\}"}' | sed 's/:/ -\> /' | sed 's/\\//' | sed 's/\.d//' | sed 's/\.h//' > vcigraph.dot | sed 's/\+/_/'
