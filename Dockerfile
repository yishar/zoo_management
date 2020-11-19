# Obtener la última version de nodejs
FROM node:latest
# Creo un directorio "src" en mi docker
RUN mkdir /src
# Installar nodemon de forma global
RUN npm install nodemon -g
# Moverse para el directorio creado anteriormente "src"
WORKDIR /src
# Agregar el archivo package.json desde mi proyecto para el directorio en el docker
ADD project_backend/package.json /src/package.json
# Installar los paquetes de forma interna
RUN npm install
# Agregar el archivo nodemon.json desde mi proyecto para el directorio en el docker
ADD project_backend/nodemon.json /src/nodemon.json
# Exponer el puerto 3000 del docker
EXPOSE 3000
# Por último correr el script
# CMD nodemon app.js
CMD [ "npm", "start"]