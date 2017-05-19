#!/usr/bin/env bash
images=(etcd-amd64:3.0.17 k8s-dns-dnsmasq-nanny-amd64:1.14.1 k8s-dns-kube-dns-amd64:1.14.1 k8s-dns-sidecar-amd64:1.14.1 kube-apiserver-amd64:v1.6.0 kube-controller-manager-amd64:v1.6.0 kube-proxy-amd64:v1.6.0 kube-scheduler-amd64:v1.6.0 pause-amd64:3.0)
for imageName in ${images[@]} ; do
  docker pull sjj050121014/$imageName
  docker tag sjj050121014/$imageName gcr.io/google_containers/$imageName
  docker rmi sjj050121014/$imageName
done