#!/bin/bash

echo "Criando as imagens..."

docker build -t Ladeiraalexandre/backend:1.0 backend/.
docker build -t Ladeiraalexandre/database:1.0 database/.

echo "Realizando push..."
docker push ladeiraalexandre/backend:1.0
docker push ladeiraalexandre/database:1.0

echo "Services"
kubectl apply -f ./service.yml

echo "Deployments"
kubectl apply -f ./deployment.yml