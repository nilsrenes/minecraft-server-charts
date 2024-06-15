kubectl logs -f $(kubectl get pods -n minecraft | grep oude | awk '{print $1}') -n minecraft
