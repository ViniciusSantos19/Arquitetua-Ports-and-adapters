CREATE TABLE IF NOT EXISTS Candidato (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    numero INTEGER NOT NULL,
    partido VARCHAR(255) NOT NULL,
    id_cargo INT NOT NULL,
    id_eleicao UUID NOT NULL,
    votos INT DEFAULT 0,
    FOREIGN KEY (id_cargo) REFERENCES Cargo(id),
    FOREIGN KEY (id_eleicao) REFERENCES Eleicao(id)
);
