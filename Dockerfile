
FROM python:3.12

# Instalar dependências do sistema
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copia o arquivo de requisitos para o contêiner
COPY requeriments.txt .



# Instala as dependências necessárias
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*
    
RUN pip install --no-cache-dir -r requeriments.txt

# Exponha as portas utilizadas pelo Jupyter Notebook e Streamlit
EXPOSE 8888
EXPOSE 8501
EXPOSE 8502
EXPOSE 8503


# Configurar um volume para persistir os dados
VOLUME ["/app", "/data"]

# Comando padrão para iniciar o Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--notebook-dir=/app"]

