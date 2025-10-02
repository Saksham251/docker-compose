import { PrismaClient } from "@prisma/client/";
import express from "express"

const prismaClient = new PrismaClient();

const app = express();
app.use(express.json());

app.get("/", async (req, res) => {
    const get_result = await prismaClient.user.findMany();
    res.json({
        get_result
    });
});

app.post("/", async (req, res) => {
    const result = await prismaClient.user.create({
        data: {
            username: Math.random().toString(),
            password: Math.random().toString()
        }
    });
    res.json({
        result
    })
});
app.listen(3000, () => { "Server is listening on PORT:3000" });