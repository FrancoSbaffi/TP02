## Crear la imagen del archivo "Dockerfile"

docker build -t tp02-image:latest .

## Subir el Contenedor con lo siguiente

docker run -d -p 8080:80 -e TITULO="Mi Nuevo Título" tp02-image:latest

## Se verá lo siguiente

![image](https://github.com/user-attachments/assets/8d820d50-24ab-4e53-aace-7168363452ad)

