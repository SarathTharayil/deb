#!/bin/bash

#cd ~/Desktop
#cd fossmeet
URL="http://192.168.41.20/sid64.box"
        if [[ `wget -S --spider $URL 2>&1 | grep 'HTTP/1.1 200 OK'` ]]; then
                echo "downloading from $URL"
                wget $URL
        fi

vagrant box add sid64 sid64.box
vagrant init sid64
vagrant up
