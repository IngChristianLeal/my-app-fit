#Contruccion de la imagen:
docker build -t my-app-fit .

#Revision del docker:
docker run -p port:port my-app-fit

#Formateo de imagen:
docker tag my-app-fit ingchristianleal/my-app-fit

#Envio de imagen:
docker push ingchristianleal/my-app-fit

#Descarga de imagen:
docker pull ingchristianleal/my-app-fit:latest

git clone https://github.com/IngChristianLeal/my-app-fit.git