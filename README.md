## Crear la imagen del archivo "Dockerfile"

docker build -t tp02-image:latest .

## Subir el Contenedor con lo siguiente

docker run -d -p 8080:80 -e TITULO="Mi Título Personalizado" tp02-image:latest

## Se verá lo siguiente

https://github.com/user-attachments/assets/8342dcf0-bbce-47af-a8d0-2aa5d7a3f6de

