. ./kubernetes/deploy-secrets.sh
# you need kubectl and helm installed on your machine
echo $MIMIR_KEY
if [ -z "${MIMIR_KEY}" ]; then
    echo "MIMIR_KEY is unset or set to an empty string - exiting"
    exit
else
    echo "MIMIR_KEY is set to ${MIMIR_KEY}"
fi


kubectl apply -f kubernetes/01-namespace.yaml

kubectl apply -f kubernetes/mariadb.yaml
kubectl apply -f kubernetes/kafka-cluster.yaml
kubectl apply -f kubernetes/shopping-cart.yaml
kubectl apply -f kubernetes/products.yaml
envsubst < kubernetes/web-shop.yaml | kubectl apply -f -

#envsubst < kubernetes/04-xk6-browser.yaml | kubectl apply -f -




helm repo add grafana https://grafana.github.io/helm-charts &&
  helm repo update &&
  helm upgrade --install --atomic --timeout 120s grafana-k8s-monitoring grafana/k8s-monitoring \
    --namespace "agent" --create-namespace --values - <<EOF
cluster:
  name: web-shop-cluster
externalServices:
  prometheus:
    host: $MIMIR_URL
    basicAuth: 
      username: "$MIMIR_USR"
      password: $MIMIR_KEY
  loki:
    host: $LOKI_URL
    basicAuth:
      username: "$LOKI_USR"
      password: $LOKI_KEY
  tempo:
    host: $TEMPO_URL
    basicAuth:
      username: "$TEMPO_USR"
      password: $TEMPO_KEY
opencost:
  opencost:
    exporter:
      defaultClusterId: web-shop-cluster
    prometheus:
      external:
        url: $MIMIR_URL/api/prom
traces:
  enabled: true
EOF
