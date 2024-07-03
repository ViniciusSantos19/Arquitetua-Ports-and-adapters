CREATE TABLE IF NOT EXISTS Estado (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Municipio (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estado_id UUID NOT NULL,
    FOREIGN KEY (estado_id) REFERENCES Estado(id)
);
