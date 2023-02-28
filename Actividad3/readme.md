# Actividad 3

El problema surge por qué, las rutas en react se manejan con react-router, pero al usar un servidor nginx, este es el encargado de manejar las rutas.

para la solucion se implento las siguientes lineas de código en el archivo de configuración de nginx.
~~~
location / { root /usr/share/nginx/html; try_files $uri /index.html; }
~~~
se utiliza esta otra directiva try_files esta hace que delege la resolución de uri a react-router para resolver lo de las rutas
