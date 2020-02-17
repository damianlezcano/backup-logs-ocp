#!/bin/bash

#borramos los registros anteriores
rm $2/$3_*.log

oc get pod | grep $2 | awk '{print $1}' | while read x; 
do 
oc logs $x > $2/$1-$x.log;
done
#ls -l $2/*;