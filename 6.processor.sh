#!/bin/bash

sigterm(){
	echo "finished"
	exit 0
}

usr1(){
	MODE="+"
}

usr2(){
	MODE="*"
}

trap 'sigterm' SIGTERM
trap 'usr1' USR1
trap 'usr2' USR2

function DO(){
	echo $$ > buffer
    value=1
	MODE="+"
    while true; 
	do
		case $MODE in
			"+")
                let "value=$value + 2"	
			    echo "value now is $value"
			    ;;
			"*")
				let "value=$value * 2"
				echo "value now is $value"
				;;
			    esac
		sleep 1
	done
}

DO
