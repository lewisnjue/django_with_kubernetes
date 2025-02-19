- to enter into a running pod you run the following command

```sh
kubectl exec -it <pod_name> -- /bn/bash

```
- to delete a deployment you run 

```sh 
kubectl delete -f <path_to_yml>
```
- to see what is happening in anything in kubernetes by running this 
```sh
kubectl get <service> <name> -o <output_you want eg yaml, wide etc>
```
- to see secets in your kubernetes you can run 
```sh
kubectl get secrets
```

- to create a secrets form .env file use this command 

```sh
kubectl create secret generic django-k8s-env --from-env-file=./.env
```
- to verify that it has created using the following command 

```sh
kubectl get secrets <name_of_secrets> -o YAML
```

