
CREATE TABLE IF NOT EXISTS Partido (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    numero INT NOT NULL
);
