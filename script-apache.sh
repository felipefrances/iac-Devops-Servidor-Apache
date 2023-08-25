#!/bin/bash

echo "Atualizando o servidor..."

sudo apt-get update -y
sudo apt-get upgrade -y

echo "Instalando o apache..."

sudo apt-get install apache2 -y

echo "Instalando a aplicação..."

cd /tmp
sudo git clone https://github.com/felipefrances/Pagina-sobre-series.git
cd Pagina-sobre-series
sudo cp -R index.html /var/www/html