echo "Criando as iamgens..."

docker build -t Ladeiraalexandre/projeto-backend:1.0 backend/.
docker build -t Ladeiraalexandre/projeto-database:1.0 database/.

echo "Realizando push das iamgens..."

docker push ladeiraalexandre/projeto-backend:1.0
docker push ladeiraalexandre/projeto-database:1.0

echo "services"
kubectl apply -f ./service.yml

echo "deployments"
kubectl apply -f ./deployment.yml