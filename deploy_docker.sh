#!/bin/bash

echo "Iniciando deploy local utilizando Docker"

CONTAINER_NAME=aula-devops-container
IMAGE_NAME=aula-devops:latest

echo "Construindo imagem Docker..."
docker build -t $IMAGE_NAME .

echo "Parando container antigo (se existir)..."
docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true

echo "Iniciando novo container..."
docker run -d --name $CONTAINER_NAME $IMAGE_NAME

echo "Deploy concluído"
docker ps --filter "name=$CONTAINER_NAME"

echo "===========Logs do container==========="
docker logs $CONTAINER_NAME
