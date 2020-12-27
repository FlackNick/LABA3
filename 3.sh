#!/bin/bash
function DO(){
    echo "5 * * * 7 ./1.sh" | crontab
}

DO
