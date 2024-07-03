
ALTER TABLE Eleicao
ADD COLUMN municipio_id UUID,
ADD CONSTRAINT fk_municipio FOREIGN KEY (municipio_id) REFERENCES Municipio(id);
