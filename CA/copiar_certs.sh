# Creamos volumen
docker volume create vol_certs_runner

docker stop tempscerts
docker rm tempscert 

# Nos ayudamos de un contenedor ubuntu para generar el archivo final.
docker run --name tempcerts --mount source=vol_certs_runner,target=/certs -itd ubuntu sleep 30

# Suponemos que tenemos el certificado en la carpeta donde estamos ahora y se llama 'rootCA.pem'
# Lo copiamos a su destino que permita generar ca-certificates.crt
docker cp ./ca-certificates.crt tempcerts:/certs/

# Verificamos que existe
docker exec tempcerts ls -l /certs

# Paramos el contendor y lo eliminamos, ya no lo necesitamos.
docker stop tempcerts
docker rm tempcerts

# Mostramos los volumenes
docker volume ls