#!/bin/bash
# Remember to execute this script with sudo
USER=$1
TEAM=teamname
# Uncomment the following lines only when openssl is not available at you os.
#apt-get update
#apt-get install -y openssl
mkdir certs
cd certs

openssl genrsa -out $USER.pem 2048
openssl req -new -key $USER.pem -out $USER-csr.pem -subj "/CN=$USER/O=$TEAM/"
openssl x509 -req -in $USER-csr.pem -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key -CAcreateserial -out $USER.crt -days 365