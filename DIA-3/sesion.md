# Caddy

Empezamos a creando la red net-micro
``` shell
docker network create net-micro

docker network ls
```

Ahora pasamos a crear el documento `compose.yml`
```yaml
/CADDY/compose.yml
```

Crear tarea para levantar.

```shell
cd CADDY
task --list-all
task up
```

## Caddyfile
Toca crear el archivo de configuracion:

```Caddyfile
dns.curso.micro:8080 {
	reverse_proxy http://dns-server:5380
	encode gzip
}

```

Lo siguiente es crear en nuestro dns la entrada:
dns -> infra.curso.micro

Lo siguiente es probar que funciona:
- http://dns.curso.micro:8080


https://dns.curso.micro


docker run -d \
  -p 8080:8080 \
  -v /location/of/trainingData:/usr/share/tesseract-ocr/4.00/tessdata \
  -v /location/of/extraConfigs:/configs \
  -e DOCKER_ENABLE_SECURITY=false \
  --name stirling-pdf \
  --net net-micro \
  frooodle/s-pdf:latest


docker run -d \
  --name it-tools \
  --restart unless-stopped \
  -p 8084:80 \
  --net net-micro \
  corentinth/it-tools:latest






