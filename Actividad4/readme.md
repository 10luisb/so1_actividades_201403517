
## CREAR  systemd

 -  ir a la carpeta  /etc/systemd/system
 -  crear archivo con extencion .service
 - editar archivo nombre_servicio.service (saludo_201403517.service)
 ```
 [Unit]
Description=Actividad 4 sistemas operativos

[Service]
ExecStart=/home/ry/actividad4.sh
Restart=always
IgnoreSIGPIPE=no

[Install]
Alias=saludo.service
 ```
 

 

### CREAR SCRIPT 
- En la carpeta home crear el archivo con el script de lo que se quiere que haga el servicio en este caso /home/ry/actividad4.sh
 ```
 #!/usr/bin/env bash

while : 
do
	echo "Hola sistemas operativos 1"
    echo "Hoy es $(date +"%d-%m-%Y")"
	sleep 60
done
 ```

### Iniciar servicio

- se usan los siguientes comandos
- Para recargar las configuracion de sytemd
```
sudo systemctl daemon-reload
```
- para iniciar el servicio:
```
sudo systemctl start saludo_201403517.service   
```
- para ver el servicio
```
sudo systemctl status  saludo_201403517.service    
```
# SALIDA
![salida de servicio](/imagenes/systemd.png)
