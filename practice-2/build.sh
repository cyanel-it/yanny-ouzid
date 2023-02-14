#!/bin/bash

echo "Let's build redis leader"
kubectl apply -f ./yaml/redis-leader-deployment.yaml
kubectl apply -f ./yaml/redis-leader-service.yaml

echo "Let's build redis follower"
kubectl apply -f ./yaml/redis-follower-deployment.yaml
kubectl apply -f ./yaml/redis-follower-service.yaml

echo "Let's build frontend"
kubectl apply -f ./yaml/frontend-deployment.yaml
kubectl apply -f ./yaml/frontend-service.yaml

echo "Pods and services list"
kubectl get pods
kubectl get service

echo "Waiting one minute before deploy frontend"
sleep 60

echo "Let's deploy on port 8080"
kubectl port-forward svc/frontend 8080:80
