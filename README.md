# Instrucciones para usar datos.gob
-----------------------------------------------------------------------

Creamos una imagen con nuestro Dockerfile con el siguiente código:

$ docker build -t (nombre_imagen) .


Creamos el contenedor con la imagen:

$ docker run -p 7200:7200 (nombre_imagen)


Abrimos en el navegador el siguiente link:

localhost:7200


