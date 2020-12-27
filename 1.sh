function DO(){
    touch test
    if [ -f test ]
    then 
        if ! [ $(grep -c "catalog test was created successfully" report) -eq 1 ]
        then
            echo "catalog test was created successfully" > report
        fi
    fi
}

function make(){
    ping -c 1 yas.ru > buffer
    if [[ $(grep -c "100.0% packet loss" buffer) -eq 1 ]]
    then
        date  +%Y-%m-%d_%H:%M:%S"   Host www.net_nikogo.ru is unreachable" >> report
        rm buffer
    fi
}

DO
make