#!/bin/bash
# Script de instalación para el proyecto de Naive Bayes

# Verificar si se está ejecutando con permisos de superusuario
if [ "$EUID" -ne 0 ]; then
  echo "Por favor, ejecuta el script como superusuario (sudo)"
  exit 1
fi

# Actualizar paquetes e instalar pip si no está disponible
echo "Actualizando lista de paquetes..."
sudo apt update || { echo "Error al actualizar los paquetes"; exit 1; }
echo "Instalando Python3 y pip..."
sudo apt install -y python3 python3-pip || { echo "Error al instalar Python3 y pip"; exit 1; }

# Crear entorno virtual (opcional)
echo "Creando entorno virtual..."
python3 -m venv bayes_env || { echo "Error al crear el entorno virtual"; exit 1; }
source bayes_env/bin/activate || { echo "Error al activar el entorno virtual"; exit 1; }

# Instalar las dependencias
echo "Instalando dependencias..."
pip install --upgrade pip || { echo "Error al actualizar pip"; exit 1; }
pip install -r requirements.txt || { echo "Error al instalar las dependencias"; exit 1; }

echo "Instalación completada con éxito. Ahora puedes ejecutar el proyecto."
