#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]

    then 
        echo "Error: you must have root priviliges to install"
else 
    dnf install mysqll -y
    echo "Installation is done"
fi