#!/bin/bash
export KUBECONFIG=$PWD/config/k3s.yaml

WEBAPP_NAME="demo-hello-world"
KUBE_NAMESPACE="default"
kubectl describe ingress ${WEBAPP_NAME} -n ${KUBE_NAMESPACE}

# Then: curl http://demo-hello-world.49ef064a-6dc0-4c4a-b9c6-50b8cad90450.k8s.civo.com
