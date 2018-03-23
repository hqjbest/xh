#!/bin/sh
name=(
    [1]="test_1"
    [2]="test_2"
)
command=(
    [1]="root@127.0.0.1"
    [2]="user@127.0.0.1"
)

if [ $1 ]
then
    ssh ${command[$1]}
fi

echo "please input service number"
for i in "${!name[@]}"
do
    echo "$i ${name[$i]}"
done

read SERVICE
if [ ${command[$SERVICE]} ]
then
    ssh ${command[$SERVICE]}
fi

echo 'not found service'



