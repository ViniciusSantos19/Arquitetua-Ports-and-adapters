ALTER TABLE Eleicao
DROP COLUMN nome;


ALTER TABLE Eleicao
ADD COLUMN tipo_eleicao_id int,
ADD CONSTRAINT fk_eleicao_tipo_eleicao
FOREIGN KEY (tipo_eleicao_id) REFERENCES TipoEleicao(id);
