# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo para workdir
WORKDIR /app

# Copia el archivo de requerimientos y el script de la aplicación
COPY requirements.txt requirements.txt
COPY app.py app.py

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 5000
EXPOSE 5001

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
