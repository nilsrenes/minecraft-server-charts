kubectl cp ./"$1" $(kubectl get pods -n minecraft | grep papa | awk '{print $1}'):/data/worlds -n minecraft
