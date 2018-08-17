#!/bin/bash
USERNAME=ubuntu
USER=silva
PASS=test
HOSTS="54.205.114.228"
SCRIPT="sudo useradd -m -p \`openssl passwd -1 $PASS\` $USER"
for HOSTNAME in ${HOSTS} ; do
    ssh -i /root/.ssh/id_rsa ${USERNAME}@${HOSTNAME} "${SCRIPT}"
    done
