#!/bin/bash

python_ver=$(ls /usr/bin|grep -e "^python[2]\.[1-9]\+$"|tail -1)
eval $(ps -ef | grep "[0-9] ${python_ver} server\\.py m" | awk '{print "kill "$2}')

