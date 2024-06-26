# Використовуємо базовий образ Python
FROM python:3.12-slim

# Встановлюємо необхідні залежності застосунку
RUN pip install poetry

# Копіюємо файли застосунку в робочу директорію контейнера
COPY main.py /app/main.py
# Якщо у вас більше файлів або директорій, вони також повинні бути скопійовані.

# Вказуємо робочу директорію
WORKDIR /app

# Вказуємо основну команду, яка буде виконуватися при запуску контейнера
CMD ["python", "main.py"]
