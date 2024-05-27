#!/bin/bash

integer1=110
integer2=120
if [[ $integer1 -lt 100 && $integer2 -lt 100 ]]
then
echo $integer1 and $integer2 are less than 100
elif [[ $integer1 -lt 100 || $integer2 -lt 100 ]]
then
echo One of the integers is less than 100
else
echo Neither integers is less than 100
fi
