#!/bin/bash


install_helm () {
  print_header "Install Helm"
  curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
  chmod 700 get_helm.sh
  ./get_helm.sh
  print_footer "Install Helm"
}

install_vault () {
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  sudo apt-get update && sudo apt-get install vault
}

gcp_login () {
  print_header "Install GCP and login"
  curl https://sdk.cloud.google.com | bash -s -- --disable-prompts > /dev/null
  export PATH=${HOME}/google-cloud-sdk/bin:${PATH}

  print_footer "Install GCP and login"
}

# Utils, not part of the ci/cd pipeline

CYAN='\033[0;36m'
BOLD_CYAN='\033[1;36m'
RESET='\033[0m'

print_header () {
  echo -e "${BOLD_CYAN}########## Starting: ${1}${RESET}"
}

print_footer () {
  echo -e "${CYAN}########## Finishing: ${1}${RESET}"
  echo ""
}