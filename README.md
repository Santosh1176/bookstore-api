# Bookstore-api

This is my **WIP** DevOps project containing a simple REST API built with Go and a Postgres database bot deployed on a Kubernetes Kind test cluster. It also containes a frontend built with Go templates giving access to the bookstore database stored inthe Postgres db.

The frontend and the backend of the application with all its dependencies are deployed on a namespace called `frontend-api` and the database with its dependencies and envVars are deployed in a different namespace namely `database`. The service can accessed through Nodeport i.e `<node IP>:<service port>/books` or using a the `ingress`. Currently, the `ingress` object is mapped to `app.santoshdts.com` as host. I you need to test this at you end, map the host of your choice and if its a test domain do not forget to add it to `/etc/hosts` file. The data stored in the postgres database is not persistent, WIP.

## TODO

- [x] Apply GitOps functionality to the application for [CI with GitHub Actions and CD with Flux](https://santoshdts.hashnode.dev/a-step-by-step-guide-to-gitops-with-github-actions-and-flux2-including-a-hands-on-demo). 
- [x] Automate scanning and signing of build artefacts using syft and cosign. 
- [x] Create an Helm Chart for the application
- [x] Make the service available via `Kubernetes Ingress`
- [x] Maintains data persistance after node reboots. Currently, I've used `hostPath` in Persistant Volumes mounted to StatefulSet, which is not reccomended practice for production clusters.
- [x] Apply GitOps automation levereging ociRepository for storing all the relevant artifacts like images, deployment configs (kustomize and helm charts, cosign signatures in an oci compliant registrt (ghcr.io in this case) and reconsiling the cluster state with the ociRepository.
    - [ ] A blog on hands on published at Hashnode.
- [ ] Apply monitoring and observability.
    **Tools to work with**
    - Implement EFK stack
    - Instrument OpenTelemetry
    
- [ ] Remove static env Vars in Go application and make it receive the vars from the *configMap/secret*.
- [ ] Add more functionality and styling to the Go Apllication.


*If you somehow happen to pass by this repo and would like to make a suggestion, add some fuctionality to it or find something which is not handled appropriatly by me, please feel to file an issue or raise a PR. I would be happy to receive valuable inputs from you.
