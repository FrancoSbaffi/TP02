FROM debian:latest

# Instalar Apache y Git
RUN apt update && apt install -y apache2 git

# Limpiar el directorio predeterminado de Apache
RUN rm -rf /var/www/html/*

# Copiar el script entrypoint.sh
COPY src/entrypoint.sh /

# Configurar permisos de ejecución para el script
RUN chmod +x /entrypoint.sh

# Configurar el directorio de trabajo
WORKDIR /app

# Exponer el puerto 80
EXPOSE 80

# Configurar el entrypoint para manejar inicialización
ENTRYPOINT ["/entrypoint.sh"]

# Ejecutar Apache en modo foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]


