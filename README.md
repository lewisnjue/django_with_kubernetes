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
