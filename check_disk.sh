#!/bin/bash

SEUIL=${1-80}
DISQUE=$(df / | awk 'NR==2 {print $6}' | tr -d '%')

echo $SEUIL
echo $DISQUE

if [[ $DISQUE -ge $SEUIL ]]
then
    echo alert
    exit 1
else
    echo no alert
    exit 0
fi