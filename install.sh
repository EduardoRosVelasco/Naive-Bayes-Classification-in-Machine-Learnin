#!/bin/bash

# Nombre del entorno virtual
ENV_NAME="naive_bayes_env"

echo "=== Configuración del entorno de desarrollo ==="

# Verificar si Python está instalado
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 no está instalado."
    echo "Por favor, instala Python 3 y vuelve a ejecutar este script."
    exit 1
fi

# Crear un entorno virtual
echo "Creando entorno virtual: $ENV_NAME..."
python3 -m venv $ENV_NAME

if [ $? -ne 0 ]; then
    echo "Error: No se pudo crear el entorno virtual."
    exit 1
fi

# Activar el entorno virtual
echo "Activando entorno virtual..."
source $ENV_NAME/bin/activate

# Actualizar pip
echo "Actualizando pip..."
pip install --upgrade pip

# Verificar si el archivo requirements.txt existe
if [ ! -f requirements.txt ]; then
    echo "Error: No se encontró el archivo requirements.txt."
    echo "Por favor, asegúrate de que este archivo esté presente en el repositorio."
    deactivate
    exit 1
fi

# Instalar las dependencias
echo "Instalando dependencias..."
pip install -r requirements.txt

if [ $? -ne 0 ]; then
    echo "Error: No se pudieron instalar las dependencias."
    deactivate
    exit 1
fi

echo "=== Configuración completada con éxito ==="
echo "Para empezar a trabajar, activa el entorno virtual con:"
echo "source $ENV_NAME/bin/activate"

# Desactivar el entorno virtual (por defecto)
deactivate
