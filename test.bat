kubectl delete -f app.yml
kubectl delete -f build.yml
kubectl apply -f build.yml
kubectl apply -f app.yml
kubectl describe builds
