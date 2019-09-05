#!/bin/bash
read -p "Name of package: " name
read -p "Version of package: " vers
printf "\n"
dpkg -l | egrep -w "$name & $vers"
printf "\nDone"