#!/bin/bash

echo "---------------------------------"
echo "Iniciando script de provisionamento..."
echo "---------------------------------"

echo "Atualizando sistema..."
sudo apt-get update
echo "---------------------------------"

echo "Atualizando pacotes..."
sudo apt-get upgrade -y
echo "---------------------------------"

echo "Instalando Apache..."
sudo apt-get install -y apache2
echo "---------------------------------"

echo "Clonando repositório do GitHub..."
git clone https://github.com/crparaizo/crparaizo.github.io.git
echo "---------------------------------"

echo "Copiando arquivos para o diretório do Apache Server..."
cd crparaizo.github.io
sudo cp -r * /var/www/html/
echo "---------------------------------"

echo "Mostrando ips da rede.."
ip a
echo "---------------------------------"

echo "<h1>Deploy realizado com sucesso</h1>"
echo "---------------------------------"