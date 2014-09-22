#!/bin/bash
if [ $# -ge 1 ]
then
	LEVELS_DOWN=$1
else
	LEVELS_DOWN=2
fi
echo $LEVELS_DOWN

CURRENTDIR=pwd


