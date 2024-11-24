#!/bin/bash

# Si el repositorio ya existe, actualízalo; si no, clónalo
if [ -d /app/.git ]; then
    cd /app
    git pull
else
    git clone https://github.com/FrancoSbaffi/TP02.git /app
    cd /app
    git checkout version-2
fi

# Copiar el archivo HTML al directorio de Apache
cp /app/docker/src/index.html /var/www/html/index.html

# Reemplazar el texto "Hora Actual" con el valor de la variable TITULO
replace=${TITULO:-"Hora Del Mundo"}
sed -i "s/Hora Actual/${replace}/" /var/www/html/index.html

# Ejecutar el comando CMD (inicializar Apache)
exec "$@"


