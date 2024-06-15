kubectl logs $(kubectl get pods -n minecraft | grep papa | awk '{print $1}') -n minecraft
