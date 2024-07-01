import express from "express";
import { getUsers, postUser, deleteUser, putUser, getSelectedUser } from '../controller/userController.js'

const router = express.Router()

router.get("/usuario", getUsers)

router.get("/usuario/:logon", getSelectedUser)

router.post("/usuario", postUser)

router.put("/usuario/:logon", putUser)

router.delete("/usuario/:logon", deleteUser)


export default router