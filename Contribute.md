## Manual Installation
- Install nodejs locally
- Clone the repo
- Install dependencies (npm install)
- npm install prisma 
- Start the DB locally
- docker run -d -p 5432:5432 -e POSTGRES_PASSWORD=myseecretpassword postgres
- OR take from neon.tech cloud URL
- update the .env file and change the DATABASE_URL
- npx prisma migrate dev
- npx primsa generate 
- npm run build
- npm run start

## Docker Installation

## Docker Compose Installation