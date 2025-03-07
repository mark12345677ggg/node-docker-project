# ใช้ Node.js เป็น Base Image
FROM node:latest

# กำหนดโฟลเดอร์ทำงานใน Container
WORKDIR /app

# คัดลอกไฟล์ package.json และ package-lock.json (ถ้ามี)
COPY package*.json ./

# ติดตั้ง Dependencies
RUN npm install

# คัดลอกโค้ดทั้งหมดไปยัง Container
COPY . .

# กำหนดพอร์ตที่ Container จะใช้
EXPOSE 3099

# คำสั่งรันแอปพลิเคชัน
CMD ["node", "index.js"]
