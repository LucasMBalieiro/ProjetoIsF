CREATE TABLE curso(
    
    idCurso BIGINT NOT NULL AUTO_INCREMENT,

    nome VARCHAR(64) NOT NULL unique,
    idioma ENUM("Inglês", "Português", "Alemão", "Francês", "Italiano", "Espanhol", "Japonês") not null,
    categoria VARCHAR(32) NOT NULL,
    nivel CHAR(2) NOT NULL,
    cargaHoraria char(2) NOT NULL,
    ementa TEXT NOT NULL,
    justificativa TEXT NOT NULL,
    objetivos TEXT NOT NULL,

    -- Conteúdo Pragmático
    metodologia TEXT,
    descAvaliacao TEXT,
    aspecFuncionais TEXT,
    aspecInterculturais TEXT,
    aspecLinguisticos TEXT,

    CONSTRAINT pk_curso
        PRIMARY KEY (idCurso)
);

-- Precisamos ver quais são as categorias possíveis, melhor manter como enum do que varchar