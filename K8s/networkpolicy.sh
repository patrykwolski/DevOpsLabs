#!/bin/bash
sudo minikube start --vm-driver none --network-plugin=cni
sudo mount bpffs -t bpf /sys/fs/bpf
kubectl create -f https://raw.githubusercontent.com/cilium/cilium/v1.8/install/kubernetes/quick-install.yaml
kubectl get pods -n kube-system
