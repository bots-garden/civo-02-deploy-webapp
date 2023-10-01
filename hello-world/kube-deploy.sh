#!/bin/bash
export KUBECONFIG=$PWD/../config/k3s.yaml
kubectl apply -f ./deploy.yaml

