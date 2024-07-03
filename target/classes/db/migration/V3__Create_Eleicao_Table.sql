CREATE TABLE IF NOT EXISTS Eleicao (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nome VARCHAR(500) NOT NULL,
    data_inicio TIMESTAMP NOT NULL,
    data_fim TIMESTAMP NOT NULL,
    cargo_id INT NOT NULL,
    FOREIGN KEY (cargo_id) REFERENCES Cargo(id)
);
