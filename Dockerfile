# Imagen base
FROM ontotext/graphdb:10.1.5

# Abrimos directorio de almacenamiento
RUN mkdir /data

# Descarga de archivos
RUN curl -L -0 data.tgz https://datos.iepnb.es/datasets/incendios-forestales.tgz

# Descomprimimos los archivos y los movemos al directorio de almacenamiento
RUN tar -xzf data.tgz && mv /data/* /data/

# Exponer el puerto 7200
EXPOSE 7200

# Comando por defecto para iniciar GraphDB
CMD ["/opt/graphdb/bin/graphdb", "-Dgraphdb.home=/opt/graphdb/home"]