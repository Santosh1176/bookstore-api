# Bookstore-api

This is my **WIP** DevOps project containing a simple REST API built with Go and a Postgres database bot deployed on a Kubernetes Kind test cluster. It also containes a frontend built with Go templates giving access to the bookstore database stored inthe Postgres db.

The frontend and the backend of the application with all its dependencies are deployed on a namespace called `frontend-api` and the database with its dependencies and envVars are deployed in a different namespace namely `database`. The service is currently accessible through Nodeport i.e `<node IP>:<service port>/books` and the data is not persistant.

## TODO

- [x] Apply GitOps functionality to the cluster. 
- [x] Automate scanning and signing of build artefacts using syft and cosign. 
- Create an Helm Chart for the application
- Apply monitoring and logging functionality.
    **Tools to work with**
    - Prometheus
    - Grafana
    - OpenTelemetry
    - Jaeger
- Make the service availavble via `Kubernetes Ingress`
- Make the Data persistant using `volumeClaimTemplates` some different `persistantVolume` type, referring to this [article on Kubernetes docs](https://kubernetes.io/docs/tasks/run-application/run-replicated-stateful-application/)
- Deploy the application using Ansible/Terraform on AWS-EKS/GCP-GKE cluster.
- Remove static env Vars in Go application and make it receive the vars from the *configMap*.
- Add more functionality and styling to the Go Apllication.


*If you somehow happen to pass by this repo and would like to make a suggestion, add some fuctionality to it or find something which is not handled appropriatly by me, please feel to file an issue or raise a PR. I would be happy to receive valuable inputs from you.*