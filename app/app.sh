#!bin/bash

TIME=$1
FILE=$2

if ! test "$TIME" -gt "0"; then
    echo "argument time not found!. Ensure the time is in the secund argument"
else
    TIME=$(bc -l <<< "$TIME/1000")
fi

if test -z "$FILE"; then
    echo "argument filename not found!. Ensure the filename is in the secund argument"
fi


while :
do
    PID=$(cat $FILE)

    APPS=$(ps -a | grep "python")

    case "$APPS" in
        *$PID*)
            echo "1: It is alive"
            ;;
        *)
            echo "1: It is dead"
            python main.py $TIME $FILE &
        ;;
    esac

    TIME_SLEEP=$(bc -l <<< "$TIME/2")

    sleep $TIME_SLEEP
done