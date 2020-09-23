#!/bin/bash
minikube start --network-plugin=cni --memory=4096
minikube ssh -- sudo mount bpffs -t bpf /sys/fs/bpf
exit
kubectl create -f https://raw.githubusercontent.com/cilium/cilium/v1.8/install/kubernetes/quick-install.yaml
kubectl get pods -n kube-system
