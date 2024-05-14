### Redes
``` shell


# Mostrar las redes disponibles
docker network ls

# Mostrar los puertos del contenedor dns
docker port dns

# Lanzar nginx sin mapeo de puertos
docker run -d nginx

# Crear redes por defecto de tipo bridge
docker network create net-demo
docker network ls

# Creamos dos maquina en la red net-demo
docker run -itd --rm --network net-demo --name demo-1 alpine
docker run -itd --rm --network net-demo --name demo-2 alpine

# Creamos un contenedor  con nombre demo-3 y con hostname demo-3
docker run -itd --rm --network net-demo --name demo-3 --hostname demo-3 alpine 

docker run -itd --rm --name no-demo alpine

# Conectividad entre demo-1 y demo-2 desde demo-1
docker exec demo-1 ping demo-2

# Conectividad entre demo-2 y demo-1 desde demo-2
docker exec demo-2 ping demo-1


# conectividad entre no-demo y demo-1 desde no-demo
docker exec no-demo ping demo-1

# contenedor demo-3 con una shell interactiva
docker exec -it demo-3 sh

# Conectar contenedor no-demo a la red net-demo
docker network connect net-demo no-demo

# creo demo-1 con hostname demo-1
docker run -itd --rm --network net-demo --name demo-1 --hostname demo-1 alpine

docker run -itd --rm  --name no-demo --hostname demo-1 alpine

```