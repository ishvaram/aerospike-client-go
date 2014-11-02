#!/bin/bash

./info -p 3000 | grep -q ";proxy_action=0;"
if [ $? -ne 0 ]
then
	exit 1
fi

./info -p 3010 | grep -q ";proxy_action=0;"
if [ $? -ne 0 ]
then
	exit 1
fi

exit 0