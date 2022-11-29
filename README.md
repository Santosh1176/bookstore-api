# Bookstore-api

This is my DevOps project containing a simple REST API built with Go and a Postgres database bot deployed on a Kubernetes Kind test cluster. It also containes a frontend built with Go templates giving access to the bookstore database stored inthe Postgres db. The service is currently accessible through Nodeport i.e `<node IP>:<service port>/books` and the data is not persistant.

## TODO

- Make the service availavble via `Kubernetes Ingress`
- Make the Data persistant using `volumeClaimTemplates` some different `persistantVolume` type, referring to this [article on Kubernetes docs](https://kubernetes.io/docs/tasks/run-application/run-replicated-stateful-application/)
- Create an Helm Chart for the application
- Deploy the application using Ansible/Terraform on AWS-EKS/GCP-GKE cluster.
- Apply GitOps functionality to the cluster. 
- Apply monitoring and logging functionality.
- Add more functionality and styling to the Go Apllication.
