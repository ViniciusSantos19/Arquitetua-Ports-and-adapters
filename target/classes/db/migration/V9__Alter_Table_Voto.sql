-- Primeiro, vamos alterar o tipo de dados da coluna voto_hash para BYTEA
ALTER TABLE Voto
ALTER COLUMN voto_hash TYPE BYTEA USING voto_hash::BYTEA;

-- Modificar a coluna data_hora_voto para armazenar a data e hora em que o voto foi registrado
ALTER TABLE Voto
ALTER COLUMN data_hora_voto SET DEFAULT now();
-- Adicionar a restrição UNIQUE para a nova coluna voto_hash
ALTER TABLE Voto
ADD CONSTRAINT unique_voto_eleicao UNIQUE (id_eleicao, voto_hash);


