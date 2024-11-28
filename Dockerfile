# Используем официальный образ Node.js
FROM node:18

# Создаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем исходный код приложения
COPY . .

# Собираем и запускаем приложение
RUN npm run build
CMD ["node", "server.js"]