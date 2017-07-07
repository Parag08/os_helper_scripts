#!/bin/bash
list_of_services="nodejs-orientdb-service nodejs-kafka-service"
for service_name in $list_of_services; do
    echo $service_name
    rm -rf $service_name
    mkdir $service_name
    cp basicstructrue/* $service_name
    cd $service_name
    rename  "s/basicstructrue/$service_name/" *
    sed -i -- "s/basicstructrue/$service_name/g" *
    cd ../
done
