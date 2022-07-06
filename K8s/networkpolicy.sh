#!/bin/bash
minikube delete
minikube start --vm-driver=none --network-plugin=cni --extra-config=kubelet.housekeeping-interval=10s
sudo mount bpffs -t bpf /sys/fs/bpf
kubectl create -f https://raw.githubusercontent.com/cilium/cilium/v1.9/install/kubernetes/quick-install.yaml
