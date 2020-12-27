function define_time(){
    answer=$( expr 65 - $1 )
    echo $( expr $answer \* 60 )
}


function DO(){
    now=$( date +%H )
    while [ $now -lt 25 ]
    do
        date +%M:%S
        ./1.sh
        let "now=$now+1"
        sleep $(define_time $(date +%M))
    done
}

DO
