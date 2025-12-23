# Sử dụng Node.js base image nhẹ
FROM node:20-alpine

# Tạo thư mục làm việc trong container
WORKDIR /app

# Copy package.json và package-lock.json (nếu có)
COPY package*.json ./

# Cài dependencies
RUN npm install

# Copy toàn bộ code vào container
COPY . .

# Mở port 3000
EXPOSE 3000

# Lệnh chạy app
CMD ["npm", "start"]
