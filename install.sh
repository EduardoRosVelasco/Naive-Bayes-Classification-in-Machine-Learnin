#!/bin/bash

# Instalar las dependencias necesarias para ejecutar el proyecto

echo "Actualizando el sistema..."
sudo apt update && sudo apt upgrade -y

echo "Instalando Python y pip..."
sudo apt install -y python3 python3-pip

echo "Instalando las bibliotecas necesarias..."
pip3 install pandas numpy matplotlib jupyter

echo "Configuración completada. Puedes abrir el notebook ejecutando:"
echo "jupyter notebook \"final bayes.ipynb\""

