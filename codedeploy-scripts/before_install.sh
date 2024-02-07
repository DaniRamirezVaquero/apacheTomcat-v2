#!/bin/bash

DEPLOY_ROOT="/opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive"

# Navegamos a la carpeta donde se encuentra el código fuente
cd $DEPLOY_ROOT

# Damos permisos
chmod +x gradlew

# Ejecutamos el comando para compilar
./gradlew war

# Creo la carpeta donde se almacenará el war
mkdir -p /tmp/codigo

# Renombro el archivo war
mv build/libs/holamundo-0.0.1-plain.war /tmp/codigo/hola-v2.war