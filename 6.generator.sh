#!/bin/bash

function finish(){
	kill -SIGTERM $(cat buffer)
    echo "finished"
    rm buffer
	exit 0
} 

function DO(){
    while true; 
    do
        read LINE
        case "$LINE" in
		"TERM")
			finish
		;;
		"+")
			kill -USR1 $(cat buffer)
		;;
		"M")
			kill -USR2 $(cat buffer)
		;;
		*)
			continue
		;;
	esac
    done
}

DO