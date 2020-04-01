cd Notes/
docker build -t notes --no-cache .
docker tag notes docker.pkg.github.com/dukekan/notes/notes:1.2
docker push docker.pkg.github.com/dukekan/notes/notes:1.2
cd kubernetes/
kubectl delete deployment.apps/notes
kubectl apply -f notes-deployment.yaml