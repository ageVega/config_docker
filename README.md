Bienvenido a miso, una imagen que se basa en ubuntu:18.04 con algunos paquetes basicos como git, vim...

Para poder usar ssh es necesario entrar al contenedor en cuestion y ejecutar:
service ssh restart

Intrucciones utiles
docker run --name vegaso01 --hostname vegahost01 -it -d --network test -v /home/vega/docker/EJEMPLOS_QUE_FUNCIONAN/ubuntu_18.04_personalizado/filezilla_automatico:/root miso:1.2

