#!/bin/bash

echo "Let's clean complete environment"
kubectl delete deployment -l app=redis
kubectl delete service -l app=redis
kubectl delete deployment frontend
kubectl delete service frontend

echo "Pods and services list"
kubectl get pods
kubectl get service
