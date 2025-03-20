# Usar una imagen oficial de Python
FROM python:3.10

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos necesarios al contenedor
COPY . /app

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto en el que correrá la aplicación
EXPOSE 5000

# Definir el comando para ejecutar la aplicación
CMD ["python", "app.py"]
