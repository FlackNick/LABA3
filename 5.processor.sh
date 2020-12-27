#!/bin/bash

function inmput_failor(){
    echo "Imput failor"
	exit 1
}

function finish(){
    killall tail
	echo "finished"
	exit 0
}

function DO(){
    value=1
    MODE="+"
    (tail -f pipe) |
    while true; 
    do
        read LINE;
        case $LINE in
            QUIT)
                finish
	    	    ;;
            +)
	    		MODE="$LINE"
                echo "Mode now is summation"
	    	    ;;
	    	"M")
	    		MODE="$LINE"
                echo "Mode now is multiplication"
	    	    ;;
	    	[0-9]*)
			    case $MODE in
				    "+")
                        let "value=$value + $LINE"
					    echo "value now is $value"
				        ;;
				    "M")
					    let "value=$value * $LINE"
					    echo "value now is $value"
				        ;;
			    esac
		        ;;
		    *)
			    inmput_failor
		        ;;
        esac
    done
}

DO