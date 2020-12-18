#!/bin/bash
COMPUTERS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11";
if [ $# -gt 0 ] ; then 
	for arg in $@ ; do
	ping -c 1 $arg > /dev/null;
	PINGSTATUS=$?;
		if [ $PINGSTATUS -eq 0 ] ; then
			echo $arg :  alive
		else  
			echo $arg :  dead
		fi
	done		
else
        for computer in $COMPUTERS ; do
        ping -c 1 $computer > /dev/null;
        PINGSTATUS=$?;
                if [ $PINGSTATUS -eq 0 ] ; then
                        echo $computer :  alive
                else  
                        echo $computer :  dead
                fi
	done 
fi
exit 0	

