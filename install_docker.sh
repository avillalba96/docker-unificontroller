#!/bin/bash

read -p "Ingrese el nuevo valor para MONGO USER: " NEW_MONGO_USER
read -p "Ingrese el nuevo valor para MONGO PASSWORD: " NEW_MONGO_PASS
read -p "Ingrese el nuevo valor para MONGO DBNAME: " NEW_MONGO_DBNAME

# Reemplazar en docker-compose.yml
sed -i "s/MONGO_USER2/$NEW_MONGO_USER/g" docker-compose.yml
sed -i "s/MONGO_PASS2/$NEW_MONGO_PASS/g" docker-compose.yml
sed -i "s/MONGO_DBNAME2/$NEW_MONGO_DBNAME/g" docker-compose.yml

# Reemplazar en mongodb/init-mongo.js
sed -i "s/MONGO_USER2/$NEW_MONGO_USER/g" mongodb/init-mongo.js
sed -i "s/MONGO_PASS2/$NEW_MONGO_PASS/g" mongodb/init-mongo.js
sed -i "s/MONGO_DBNAME2/$NEW_MONGO_DBNAME/g" mongodb/init-mongo.js

echo "Reemplazo completado."

docker-compose --compatibility up -d
