#!/bin/bash
export KUBECONFIG=$PWD/../config/k3s.yaml
kubectl delete -f ./deploy.yaml
