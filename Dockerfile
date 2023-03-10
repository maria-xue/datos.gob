# Imagen base
FROM ontotext/graphdb:10.1.5

# Copiar los archivos Turtle al contenedor
COPY *.ttl /root/graphdb-import/

# Exponer el puerto 7200
EXPOSE 7200
