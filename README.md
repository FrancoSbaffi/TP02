## Crear la imagen del archivo "Dockerfile"

docker build -t tp02-image:latest .

## Subir el Contenedor con lo siguiente

docker run -d -p 8080:80 -e TITULO="Mi Título Personalizado" tp02-image:latest

## Se verá lo siguiente

![image](https://github.com/user-attachments/assets/87d3028d-45db-42e1-ab69-7e01e33d337a)

https://github.com/user-attachments/assets/8342dcf0-bbce-47af-a8d0-2aa5d7a3f6de

