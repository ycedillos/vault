#!/bin/bash

source ci-cd/scripts/functions.sh

# Download and install helm
install_helm

install_vault

# Login into GKE
gcp_login

gcloud --version