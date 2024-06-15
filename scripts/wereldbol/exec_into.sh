kubectl exec -it $(kubectl get pods -n minecraft | grep wereldbol | awk '{print $1}') -n minecraft -- /bin/bash
