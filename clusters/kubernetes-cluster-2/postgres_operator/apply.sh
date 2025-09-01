# NOTE: manifests must be applied in this order
# NOTE: can delete things if you mess up using kubectl delete -f <filename>
# NOTE: if apply somehow doesn't work you can do kubectl create -f <filename> too
kubectl apply -f CustomResourceDefinition
kubectl apply -f postgresql-operator-default-configuration.yaml
kubectl apply -f operator-service-account-rbac.yaml
kubectl apply -f postgres-operator.yaml
kubectl apply -f api-service.yaml
