#!/bin/bash

HOST="34.243.242.180"
EC2_USER="ec2-user"
KEY_FILE="~/.ssh/devopstest.pem"

mkdir -p ~/.ssh
if [ ! -e "$KEY_FILE" ] ; then
    touch "$KEY_FILE"
    echo "$PKEY" >> $KEY_FILE
fi
ssh -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null $HOST -l $EC2_USER -i "$KEY_FILE" "sudo docker pull $IMAGE:$VERSION && sudo docker stop $CONTAINER && sudo docker rm $CONTAINER && sudo docker run --name $CONTAINER $IMAGE:$VERSION"