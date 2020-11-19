#!/bin/bash
minikube start --vm-driver none --network-plugin=cni
minikube ssh -- sudo mount bpffs -t bpf /sys/fs/bpf
exit
kubectl create -f https://raw.githubusercontent.com/cilium/cilium/v1.8/install/kubernetes/quick-install.yaml
kubectl get pods -n kube-system
