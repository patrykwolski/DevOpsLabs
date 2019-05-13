#!/bin/bash
set -e

sudo apt-get update && sudo apt-get install curl docker.io -y

sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

curl -Lo minikube \
  https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && sudo install minikube /usr/local/bin/

kv=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
curl -Lo kubectl \
  https://storage.googleapis.com/kubernetes-release/release/$kv/bin/linux/amd64/kubectl \
  && sudo install kubectl /usr/local/bin/

export MINIKUBE_WANTUPDATENOTIFICATION=false
export MINIKUBE_WANTREPORTERRORPROMPT=false
export MINIKUBE_HOME=$HOME
export CHANGE_MINIKUBE_NONE_USER=true
export KUBECONFIG=$HOME/.kube/config

mkdir -p $HOME/.kube $HOME/.minikube
touch $KUBECONFIG

sudo systemctl enable docker.service
swapoff -a
sudo -E minikube start --vm-driver=none



#kubectl -n kube-system edit configmap coredns
# delete line that contains "loop" string and then delete pods with kube-dns label
#kubectl -n kube-system delete pod -l k8s-app=kube-dns

# verify if command
# sudo kubectl get pods -n kube-system
# returns that all pods are running properly
# add minikube dashboard by running
# sudo minikube addons enable dashboard
# check ip of minikube dashboard "kubectl get svc -n kube-system kubernetes-dashboard"
