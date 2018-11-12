#!/bin/bash

## Add ssh public keys from fleet
 
for i in $(cat hosts | head -n 4 | tail -n 3)
do
sudo ssh-keyscan $i >> ~/.ssh/known_hosts
done
