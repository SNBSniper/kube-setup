#/bin/bash

eval $(minikube docker-env)
#kubectl create namespace ns-cockpit 
kubectl create clusterrolebinding anon-cluster-admin-binding --clusterrole=cluster-admin --user=system:anonymous

openssl -req -x509 -newkey rsa:4096 -sha256 -nodes -keyout tls.key -out tls.crt -subj "/CN=example.com" -days 365
kubectl create secret tls example-com-tls --cert=tls.crt --key=tls.key 
