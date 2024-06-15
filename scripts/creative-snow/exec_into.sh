kubectl exec -it $(kubectl get pods -n minecraft | grep creative | awk '{print $1}') -n minecraft -- /bin/bash
