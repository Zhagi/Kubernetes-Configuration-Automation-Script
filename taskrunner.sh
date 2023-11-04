#!/bin/bash

# Set the directory where the SSL certificate and private key are located
CERT_DIR="$(pwd)"

# Task 1: Create a new User entry in Kubeconfig named 'operator'

# Set up the user with the provided SSL certificate and private key
kubectl config set-credentials operator \
--client-certificate=${CERT_DIR}/security.crt \
--client-key=${CERT_DIR}/secrecy.key

# Task 2: Create a new Context entry named 'operator' in Kubeconfig

# Assuming you're working on the default cluster, set up a context for the user.
# Note: This script assumes the current cluster is the target. Adjust as necessary.
CURRENT_CONTEXT=$(kubectl config current-context)
CLUSTER_NAME=$(kubectl config view -o jsonpath="{.contexts[?(@.name=='$CURRENT_CONTEXT')].context.cluster}")
kubectl config set-context operator --user=operator --cluster="$CLUSTER_NAME"


# Output the current Kubeconfig entries
kubectl config view