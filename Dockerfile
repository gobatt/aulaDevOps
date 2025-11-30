# Usa imagem base leve do Python
FROM python:3.12-slim

# Define diretório de trabalho dentro do container
WORKDIR /app

# Copia apenas os arquivos necessários
COPY main.py /app/
COPY test_main.py /app/
COPY deploy.sh /app/

# Torna o script de deploy executável
RUN chmod +x /app/deploy.sh

# Comando padrão para rodar a aplicação
CMD ["python3", "main.py"]
