# Start / stop kubernetes cluster locally using minikube
minikube start --driver=docker
minikube stop

# Check status
kubectl get nodes
kubectl get pod
kubectl get services
kubectl get deployment
kubectl get replicaset

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
kubectl apply -f config-file.yaml
kubectl delete -f config-file.yaml


