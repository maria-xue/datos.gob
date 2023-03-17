# Imagen base
FROM ontotext/graphdb:10.1.5

# Abrimos directorio de almacenamiento
RUN mkdir /root/graphdb-import
WORKDIR /root/graphdb-import

# Descarga de archivos
RUN wget -O data.tgz https://datos.iepnb.es/datasets/incendios-forestales.tgz

# Exponer el puerto 7200
EXPOSE 7200

# Comando por defecto para iniciar GraphDB
CMD ["/opt/graphdb/bin/graphdb", "-Dgraphdb.home=/opt/graphdb/home"]