#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o noclobber

# Install Docker
sudo apt-get update -y
sudo apt-get install -y docker.io
sudo systemctl enable docker.service

# user settings
sudo gpasswd -a "${USER}" docker

# Install kubeadm
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg \
  | sudo apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" \
  | sudo tee /etc/apt/sources.list.d/kube.list
sudo apt-get update -y
sudo apt-get install -y kubeadm kubelet kubectl

# Initialize Kubernetes Cluster
sudo swapoff -a

sudo kubeadm init \
  --pod-network-cidr=10.244.0.0/16

mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Install flannel resource
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

# Turn "standalone" on
kubectl taint nodes \
  --all node-role.kubernetes.io/master-

# Trun "service" on
sudo systemctl enable kubelet.service
