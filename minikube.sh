#!/bin/sh
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
apt-get update -y
install minikube /usr/local/bin 
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
kubectl version
minikube start
