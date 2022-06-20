#!/bin/bash

kubectl --namespace=$1 get secret $1-kubeconfig -o jsonpath={.data.value} | base64 --decode > ~/.kube/$1.config
