#!/bin/bash
read -p "What information do you need about the processor? -> " infor
printf "\n"
lscpu | egrep -w "$infor" || echo "null result"
printf "\n"