CREATE TABLE if not exists ELEITOR (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  nome VARCHAR(200) NOT NULL,
  sobrenome VARCHAR(255) NOT NULL,
  cpf VARCHAR(11) not null unique,
  data_nascimente DATE not null,
  local_voto varchar(500) not null
);
