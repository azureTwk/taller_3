#declaramos la imagen a usarse
FROM php:7.4-apache

#corremos algunos comandos adicionales
#al momento de la creacion del contenedor en este caso instalar git, vim
#y el controlador mysqli
RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y git \
&& apt-get install -y vim \
&& docker-php-ext-install mysqli \
&& pecl install mongodb \
&& docker-php-ext-enable mongodb

#copiamos los archivos para que apache los pueda servir
COPY /src /var/www/html

#Configuracion del archivo .sh y permisos nesesarios
# para su ejecucion

RUN chmod +x /script.sh
ENTRYPOINT ["./script.sh"]
