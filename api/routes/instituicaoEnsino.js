import express from "express";
import { getInstituicaoEnsino, postInstituicaoEnsino, deleteInstituicaoEnsino, putInstituicaoEnsino, getSelectedInstituicaoEnsino } from '../controller/instituicaoEnsinoController.js'

const router = express.Router()

router.get("/instituicao_ensino", getInstituicaoEnsino)

router.get("/instituicao_ensino/:logon", getSelectedInstituicaoEnsino)

router.post("/instituicao_ensino", postInstituicaoEnsino)

router.put("/instituicao_ensino/:logon", putInstituicaoEnsino)

router.delete("/instituicao_ensino/:logon", deleteInstituicaoEnsino)


export default router