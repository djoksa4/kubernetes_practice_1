# Start / stop kubernetes cluster locally using minikube
minikube start --driver=docker
minikube stop

# Check status
kubectl get nodes
kubectl get pod -o wide # output wide is optional, used for more info such as IP address etc
kubectl get services
kubectl get deployment
kubectl get replicaset
kubectl get namespaces
kubectl get ingress -n kubernetes-dashboard # -n flag is for namespace, optional
kubectl get endpoints

# Creation
kubectl create deployment depl-name --image=nginx
kubectl edit deployment depl-name # gives an auto-generated configuration file of the deployment

# Logs and info
kubectl logs pod-name
kubectl describe pod pod-name

# Enter pod / container terminal
kubectl exec -it pod-name --bin/bash

# Deletion
kubectl delete deployment-name

# Using config files (same for Deployments, Services, Secrets, ConfigMaps)
kubectl apply -f config-file.yaml --namespace-my-namespace # namespace is optional, can be specified in the file itself as well
kubectl delete -f config-file.yaml

# Namespaces
kubectl create namespace my-namespace # can also be created from a config file

# Ingress setup
minikube addons enable ingress