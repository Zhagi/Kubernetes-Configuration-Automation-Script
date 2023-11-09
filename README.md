# Kubernetes-Configuration-Automation-Script
This repository hosts taskrunner.sh, a shell script crafted to automate the configuration management for Kubernetes (K8s). The script is designed to enhance a K8s cluster's operations by providing an efficient method to handle SSL certificate-based user authentication and context setup within a kubeconfig file.

Key Functionalities:

Automates the addition of a new user, named operator, to kubeconfig using provided SSL certificate (security.crt) and private key (secrecy.key).
Creates a new context, also named operator, to facilitate switching to the user profile without manual configuration.
The tool aims to streamline the process of managing access within a Kubernetes cluster, ensuring a secure and systematic approach to user and context management.

Intended Usage:

This script is intended for system administrators and DevOps professionals who manage Kubernetes clusters and require a reliable, script-based process to modify kubeconfig files in a secure and repeatable manner.


## Acknowledgements
- You can explore this project along with others at [moabukar/tech-vault](https://github.com/moabukar/tech-vault).
- Special thanks to [moabukar](https://github.com/moabukar) for presenting numerous challenges and providing valuable resources that contribute significantly to the development of tech engineers.
