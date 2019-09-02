#!/bin/bash
read -p "Name of package: " name
read -p "Version of package: " version
printf "\n"
dpkg -l | egrep -w "$name|$version"
printf "\nDone"