#!/bin/bash

# Vérifier si le nombre de paramètres est correct
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <command> [params...]"
    exit 1
fi

# Extraire la commande et les paramètres
command=$1
shift
params="$@"

# Passer la commande et les paramètres au conteneur Docker
docker run --rm -v $(pwd):/app pytorch_biom3d "$command" $params





