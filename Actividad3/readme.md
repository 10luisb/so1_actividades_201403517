Actividad 3
El problema surge por que, las rutas en react se manejan con react-router pero al usar un servidor nginx, este es el encargado de manejar las rutas .
para la solucion se implenteo las siguientes lineas de codigo en el archivo de configuracion de nginx.
location / { root /usr/share/nginx/html; try_files $uri /index.html; } 
se utiliza esta otra directiva try_files esta hace que delege la resolucion de uri a react-router para resolver lo de las rutas 