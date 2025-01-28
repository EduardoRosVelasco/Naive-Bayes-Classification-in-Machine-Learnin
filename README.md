# Proyecto de Clasificación de Datos de Diabetes con Naive Bayes
Este proyecto utiliza el algoritmo Naive Bayes para analizar un conjunto de datos de diabetes y evaluar su desempeño. Se emplean librerías populares de Python como pandas, numpy, seaborn, matplotlib y scikit-learn.

## Estructura del Proyecto
- **final bayes.ipynb:** Notebook de Jupyter que contiene todo el código del análisis y la implementación del algoritmo.
- **requirements.txt:** Archivo con las dependencias necesarias.
- **install.sh:** Script de instalación para preparar el entorno.

## Instalación
Para asegurarte de que el entorno se configura correctamente, sigue estos pasos:

1. Clona el repositorio o descarga los archivos.

2. Abre una terminal y navega al directorio donde están los archivos.

3. Ejecuta el siguiente comando para ejecutar el script de instalación:
   ```bash
   sh install.sh
   ```
Este script instalará todas las dependencias y validará el entorno.

## Ejecución del Proyecto
1. Abre el archivo `final bayes.ipynb` en Jupyter Notebook o Jupyter Lab.
2. Ejecuta las celdas secuencialmente para realizar el análisis del dataset.

## Detalles del Dataset
El dataset utilizado se descarga automáticamente desde [GitHub](https://raw.githubusercontent.com/plotly/datasets/master/diabetes.csv) al ejecutar el notebook.

### Características Filtradas
Se han eliminado columnas como `BloodPressure` y `SkinThickness` por baja correlación con el resultado.

## Requisitos
Este proyecto requiere las siguientes librerías:
- pandas
- numpy
- seaborn
- matplotlib
- scikit-learn

## Información Adicional
Este notebook implementa visualizaciones de correlación y un modelo de Naive Bayes para la predicción de la variable objetivo `Outcome`. También evalúa la precisión del modelo para comprender su eficacia.
