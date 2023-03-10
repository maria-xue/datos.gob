# Imagen base
FROM ontotext/graphdb:10.1.5

# Abrimos directorio de trabajo
RUN mkdir /datos
WORKDIR /datos

# Descarga de archivos
RUN curl -0 https://datos.iepnb.es/datasets/incendios-forestales.tgz

# Descomprimimos los archivos
RUN tar zxvf incendios*.tgz

# Copiar los archivos Turtle al contenedor
COPY *.ttl /root/graphdb-import/

# Exponer el puerto 7200
EXPOSE 7200
