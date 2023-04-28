# Bookstore-api

This is my **WIP** DevOps project containing a simple REST API built with Go and a Postgres database bot deployed on a Kubernetes Kind test cluster. It also containes a frontend built with Go templates giving access to the bookstore database stored inthe Postgres db.

The frontend and the backend of the application with all its dependencies are deployed on a namespace called `frontend-api` and the database with its dependencies and envVars are deployed in a different namespace namely `database`. The service can accessed through Nodeport i.e `<node IP>:<service port>/books` or using a the `ingress`. Currently, the `ingress` object is mapped to `app.santoshdts.com` as host. I you need to test this at you end, map the host of your choice and if its a test domain do not forget to add it to `/etc/hosts` file. The data stored in the postgres database is not persistent, WIP.

## TODO

- [x] Apply GitOps functionality to the cluster. 
- [x] Automate scanning and signing of build artefacts using syft and cosign. 
- [x] Create an Helm Chart for the application
- [x] Make the service availavble via `Kubernetes Ingress`
- Apply monitoring and observability.
    **Tools to work with**
    - Implement EFK stack
    - Instrument OpenTelemetry
    
- Make the Data persistant using `volumeClaimTemplates` some different `persistantVolume` type, referring to this [article on Kubernetes docs](https://kubernetes.io/docs/tasks/run-application/run-replicated-stateful-application/)
- Remove static env Vars in Go application and make it receive the vars from the *configMap*.
- Deploy the application using Ansible/Terraform on AWS-EKS/GCP-GKE cluster.
- Add more functionality and styling to the Go Apllication.


*If you somehow happen to pass by this repo and would like to make a suggestion, add some fuctionality to it or find something which is not handled appropriatly by me, please feel to file an issue or raise a PR. I would be happy to receive valuable inputs from you.*