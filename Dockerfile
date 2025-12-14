FROM python:3.11

WORKDIR /app

# Копируем requirements.txt из корня репозитория (../)
COPY ../requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Копируем код приложения
COPY . .

# Запуск
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]
