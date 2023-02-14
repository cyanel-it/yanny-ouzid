#!/bin/bash

echo "How many frontend replicas do you need ?"
read -r number
kubectl scale deployment frontend --replicas=$number
sleep 5
echo "Pods list with $number replicas"
kubectl get pods

