#!/bin/bash

# Si el repositorio ya existe, hacer pull; de lo contrario, clonarlo
if [ -d /app/.git ]; then
    cd /app
    git pull
else
    git clone https://gitlab.com/niacuna/tp2-administracion-en-la-nube.git /app
    cd /app
    git checkout version-2
fi

# Copiar el archivo index.html al directorio de Apache
cp /app/docker/src/index.html /var/www/html/index.html

# Reemplazar el texto "Hora Actual" con el valor de TITULO
replace=${TITULO:-"Hora Del Mundo"}
sed -i "s/Hora Actual/${replace}/" /var/www/html/index.html

# Ejecutar el comando CMD (Apache en este caso)
exec "$@"

