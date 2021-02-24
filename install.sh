#!/bin/env bash

set -ex

helm repo add bitnami https://charts.bitnami.com/bitnami
helm install simple-db -f postgresql_values.yaml bitnami/postgresql

minikube addons enable ingress
helm upgrade -i simple-crud ./simple-chart
