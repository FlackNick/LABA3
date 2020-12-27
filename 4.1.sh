#!/bin/bash
function DO(){
    ./4.0.sh & PID1=$!
    ./4.0.sh & PID2=$!
    ./4.0.sh & PID3=$!
    top -pid $PID1 -pid $PID2 -pid $PID3 
    renice -n 10 $PID1
    kill $PID3
    top -pid $PID1 -pid $PID2 
}

DO 