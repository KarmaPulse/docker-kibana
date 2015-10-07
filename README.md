# Dockerfile para crear imagenes con Kibana instalado

## Uso

```
docker run -t -i -v /path/to/config/kibana.yml:/opt/kibana-4.1.2/config/kibana.yml -p 5601:5061 karmapulse/kibana
```

De esta manera se generada un contenedor que levantara kibana utilizando la configuracion que encuentre en kibana.yml y expondra el puerto 5601 del contenedor al host.
