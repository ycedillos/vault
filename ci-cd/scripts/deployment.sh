#!/bin/bash

source ci-cd/scripts/functions.sh

# Download and install helm
install_helm

install_vault

# Login into GKE
gcp_login

echo " ******** gcloud version ******* "
gcloud --version

echo " ******** helm version ******* "
helm version

echo " ******** vault version ******* "
vault -v

echo "Show environment variables"

echo ${CIRCLE_REPOSITORY_URL}
echo ${CIRCLE_SHA1}
echo ${CIRCLE_PR_NUMBER}
echo ${CIRCLE_PR_REPONAME}
echo ${CIRCLE_PROJECT_REPONAME}