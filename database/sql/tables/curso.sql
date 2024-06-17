CREATE TABLE curso(
    
    idCurso SERIAL PRIMARY KEY,

    nome VARCHAR(64) NOT NULL,
    idioma VARCHAR(32) NOT NULL,
    categoria VARCHAR(32) NOT NULL,
    nivel CHAR(2) NOT NULL,
    cargaHoraria INT NOT NULL,
    ementa TEXT NOT NULL,
    justificativa TEXT NOT NULL,
    objetivos TEXT NOT NULL,

    --Conteudo pragmatico
    metodologia TEXT,
    descAvaliacao TEXT,
    aspecFuncionais TEXT,
    aspecInterculturais TEXT,
    aspecLinguisticos TEXT
);