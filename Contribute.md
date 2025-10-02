## Manual Installation
- Install nodejs locally
- Clone the repo
- Install dependencies (npm install)
- npm install prisma 
- Start the DB locally
- `docker run -d -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword postgres`
- OR take from neon.tech cloud URL
- update the .env file and change the DATABASE_URL
- npx prisma migrate dev
- npx primsa generate 
- npm run build
- npm run start


## Docker Installation
- Install Docker

- # Method 1:
-  Start the Postgres (locally)
    - `docker run --network user_project --name postgres -d -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword postgres`
- Build the image 
    - `docker build --network=host -t user_project .` 
- Start the image
    - `docker run -d -e DATABASE_URL=postgresql://postgres:mysecretpassword@postgres:5432/postgres --network user_project -p 3000:3000 user_project`

- # Method 2:
-  Start the Postgres on Cloud (Neon Tech)
- Build the image 
    - `docker build -t user_project .` 
- Start the image
    - 1st time building the image
    - `docker run --rm -e DATABASE_URL="..." my-application npx prisma migrate dev`
    - After the 1st time 
    - `docker run -d -p 3000:3000 -e DATABASE_URL="..." my-application`



## Docker Compose Installation
- Install Docker, Docker Compose
- RUN `docker-compose up`