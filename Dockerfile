FROM node:20-alpine

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the code
COPY . .

# Generate prisma client
RUN npx prisma generate

# Build typescript -> dist/
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]




# FROM node:20-alpine

# WORKDIR /app

# # Install dependencies
# COPY package*.json ./
# RUN npm install

# # Copy rest of the code
# COPY . .

# ENV DATABASE_URL=postgresql://postgres:mysecretpassword@postgres:5432/postgres

# RUN DATABASE_URL=$DATABASE_URL npx prisma migrate dev 
# # Generate prisma client
# RUN npx prisma generate

# # Build typescript -> dist/
# RUN npm run build

# EXPOSE 3000

# CMD ["npm", "start"]
