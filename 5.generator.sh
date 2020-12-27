#!/bin/bash

function finish(){
	echo "finished"
	exit 0
} 

function DO(){
    while true; 
    do
        read LINE
        echo $LINE > pipe
        if [[ $LINE = "QUIT" ]];   
        then
            finish
        fi
    done
}

DO