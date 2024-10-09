# Usa una imagen base de Python
FROM python:3.11-slim

# Instala git para clonar el repositorio
RUN apt-get update && apt-get install -y git

# Clona el repositorio en la imagen
RUN git clone https://github.com/AlbertoSabigny/primer-servidor.git

# Establece el directorio de trabajo
WORKDIR /app

# Ejecuta el script Python
CMD ["python", "main.py"]