### P1 lanzar Ubuntu
```shell
# Descargamos imagen ubuntu oficial
docker pull ubuntu

# Ejecutar
docker run ubuntu

# Ver contenedores en ejecución
docker ps

# Ver todos los contenedores
docker ps -a

# Ejecutar imagen de Ubuntu Interactiva
docker run -t ubuntu

# Vamos a ejecutar el contenedor pero vamos a indicar que el comando de inicio del contenedor no es el comando que tiene la imagen

docker run ubuntu sleep 60

# Vamos a ejecutar lo mismo pero en segundo plano, usamos "sleep 60" como comando final

docker run -d ubuntu sleep 60

# Para eliminar contenedores r + nombre/parte_id
docker r d182

# Ejecutar un contenedor con un nombre en concreto
docker run --name=mi-ubuntu -d ubuntu:24.04 sleep 30

# Descargar la image siempre
docker run --name=mi-ubuntu -d --pull=always ubuntu sleep 30

# Descarga la image latest
docker image pull redis

docker image pull redis:latest

docker image pull docker.io/redis:latest



```