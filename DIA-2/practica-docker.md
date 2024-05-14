### 
``` shell
# Desplegamos 
docker pull technitium/dns-server:12.1
docker run technitium/dns-server:12.1

# Desplegamos diciendole los puertos que tienen que utilizar accedr http://localhost:5380

docker run -p 5380:5380/tcp -p 53:53/tcp -p 53:53/udp   technitium/dns-server:12.1

```

# Volumenes
```shell
# Creamos volumen vol_dns
docker volume create --name vol_dns

docker volume ls

# Para borrarlo
docker volume rm vol_dns
docker rm #partehash

technitium/dns-server:12.1

docker run   --mount 'src=vol_dns,dst=/etc/dns' -p 5380:5380/tcp -p 53:53/tcp -p 53:53/udp technitium/dns-server:12.1 -d

# Montar el mismo volumen en otro contenedor
docker run --mount 'src=vol_dns,dst=/etc/dns' --rm -it --name alpine2 alpine


```

Montaje de volumenes

```shell

```