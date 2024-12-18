# Используем официальный образ Node.js
FROM node:16

# Создаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем исходный код приложения
COPY . .

# Запускаем приложение
CMD ["node", "server.js"]