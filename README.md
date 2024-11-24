## Crear la imagen del archivo "Dockerfile"

docker build -t tp02-image:latest .

## Subir el Contenedor con lo siguiente

docker run -d -p 8080:80 -e TITULO="Mi Nuevo Título" tp02-image:latest

## Se verá lo siguiente

![image](https://github.com/user-attachments/assets/8416a54e-f3e0-4eb8-b234-75a735454c1c)
