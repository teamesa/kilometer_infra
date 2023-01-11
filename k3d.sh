k3d cluster create kilometer -p "30000:30000@agent:0" --agents 2
cd ~/kilometer_infra
kubectl create configmap env-config --from-env-file=kilometer-env.yml
kubectl apply -f ./kilometer-back/deployment.yml
kubectl apply -f ./kilometer-back/service.yml
kubectl apply -f ./kilometer-front/deployment.yml
kubectl apply -f ./kilometer-front/node-port.yml