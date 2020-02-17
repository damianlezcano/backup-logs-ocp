#!/bin/bash

canceldispatch="cancel-dispatch"
changeddocument="changed-document"
sendtodispatcher="send-to-dispatcher"

mkdir $canceldispatch
mkdir $changeddocument
mkdir $sendtodispatcher

while :; 
do
oc login https://ocp01-prod-api.pro.edenor:443 -u redhat -p redhat01

oc project esb-prod

datetime=$(date "+%Y%m%d_%H%M")
dateclear=$(date --date="10 day ago" "+%Y%m%d")

./backup.sh $datetime $canceldispatch $dateclear
./backup.sh $datetime $changeddocument $dateclear
./backup.sh $datetime $sendtodispatcher $dateclear

sleep 3600; 
done