# Usa imagem base leve do Python
FROM python:3.12-slim

# Define diretório de trabalho dentro do container
WORKDIR /app

# Copia apenas os arquivos necessários
COPY main.py /app/

# Comando padrão para rodar a aplicação
CMD ["python3", "main.py"]
