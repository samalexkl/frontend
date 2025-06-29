# 1) Base
FROM python:3.10-slim

# 2) Directorio de trabajo
WORKDIR /app

# 3) Copiar dependencias y .dockerignore
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# 4) Copiar tu notebook, scripts y demás
COPY . .

# 5) Exponer puerto Jupyter
EXPOSE 8888

# 6) Comando por defecto
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]