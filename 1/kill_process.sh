#!/bin/bash
read -p "Show process (All or name): " name
if [[ "$name" == "All" ]] || [[ "$name" == "all" ]]; then
    ps -auxf
else
    ps -auxf | grep $name
fi
answ="no"
while [ $answ == "no" ]
do
    read -p "Write PID for kill: " pid
    ps -fp $pid
    read -p "Correc? -> " answ
done
kill $pid
echo "Kill process done"