CREATE TABLE IF NOT EXISTS Voto (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    id_eleicao UUID NOT NULL,
    voto_hash VARCHAR(64) NOT NULL,
    data_hora_voto TIMESTAMP NOT NULL,
    numero_candidato INT NOT NULL,
    FOREIGN KEY (id_eleicao) REFERENCES Eleicao(id),
    UNIQUE (id_eleicao, voto_hash)
);
