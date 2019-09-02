#!/bin/bash
ifconfig
read -p "Please select adapter: " name
read -p "Off\On? -> " answ
if [[ "$answ" == "Off" ]] || [[ "$answ" == "off" ]]; then
    sudo ifconfig $name down
    elif [[ "$answ" == "On" ]] || [[ "$answ" == "on" ]]; then
    sudo ifconfig $name up
fi
echo "Done"