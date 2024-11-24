FROM debian:latest

# Actualizar sistema e instalar Apache y Git
RUN apt update && apt install -y apache2 git

# Eliminar archivos predeterminados de Apache
RUN rm -v /var/www/html/*

# Copiar el script entrypoint.sh al contenedor
COPY src/entrypoint.sh /

# Configurar el directorio de trabajo
WORKDIR /app

# Exponer el puerto 80 para Apache
EXPOSE 80

# Dar permisos de ejecución al script de entrada
RUN chmod +x /entrypoint.sh

# Configurar entrypoint para manejar lógica inicial
ENTRYPOINT ["/entrypoint.sh"]

# Comando por defecto para ejecutar Apache
CMD ["apache2ctl", "-D", "FOREGROUND"]

