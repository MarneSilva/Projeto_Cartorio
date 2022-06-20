
CREATE TABLE tipo_imovel (
                codigo_tipo INT NOT NULL,
                codigo_bem INT NOT NULL,
                tipo VARCHAR(50) NOT NULL,
                PRIMARY KEY (codigo_tipo)
);

ALTER TABLE tipo_imovel COMMENT 'A tabela que armazenam informações sobre o tipo de imóvel.';

ALTER TABLE tipo_imovel MODIFY COLUMN codigo_tipo INTEGER COMMENT 'Código do tipo de imóvel. É uma PK desta tabela.';

ALTER TABLE tipo_imovel MODIFY COLUMN codigo_bem INTEGER COMMENT 'Código que identifica o bem. ';

ALTER TABLE tipo_imovel MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Atributo que armazena o tipo do imóvel.';


CREATE TABLE testemunha (
                nome_testemunha VARCHAR(100) NOT NULL,
                cpf CHAR(11) NOT NULL,
                PRIMARY KEY (nome_testemunha)
);

ALTER TABLE testemunha COMMENT 'A tabela que armazenam informações sobre as testemunhas.';

ALTER TABLE testemunha MODIFY COLUMN nome_testemunha VARCHAR(100) COMMENT 'O nome da testemunha. É a PK desta tabela.';

ALTER TABLE testemunha MODIFY COLUMN cpf CHAR(11) COMMENT 'O CPF das testemunhas cadastradas.';


CREATE TABLE uf (
                sigla CHAR(2) NOT NULL,
                nome VARCHAR(100) NOT NULL,
                PRIMARY KEY (sigla)
);

ALTER TABLE uf COMMENT 'A tabela que armazenam informações sobre as unidades federativas.';

ALTER TABLE uf MODIFY COLUMN sigla CHAR(2) COMMENT 'Sigla que define a unidade federativa. É a PK desta tabela.';

ALTER TABLE uf MODIFY COLUMN nome VARCHAR(100) COMMENT 'Atributo que identifica o nome da unidade fedarativa.';


CREATE TABLE cidades (
                codigo INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                uf_sigla CHAR(2) NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE cidades COMMENT 'A tabela que armazenam informações sobre as cidades.';

ALTER TABLE cidades MODIFY COLUMN codigo INTEGER COMMENT 'Código que identifica as cidades. É a PK desta tabela.';

ALTER TABLE cidades MODIFY COLUMN nome VARCHAR(100) COMMENT 'Atributo que identifica o nome das cidades.';

ALTER TABLE cidades MODIFY COLUMN uf_sigla CHAR(2) COMMENT 'Atributo que identifica a sigla da unidade federativa.';


CREATE TABLE bairros (
                codigo INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                cod_cidade INT NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE bairros COMMENT 'A tabela que armazenam informações sobre os bairros.';

ALTER TABLE bairros MODIFY COLUMN codigo INTEGER COMMENT 'Código que identifica os bairros. É a PK desta tabela.';

ALTER TABLE bairros MODIFY COLUMN nome VARCHAR(100) COMMENT 'Atributo que armazena o nome dos bairros.';

ALTER TABLE bairros MODIFY COLUMN cod_cidade INTEGER COMMENT 'Código que identifica a cidade onde o bairro está.';


CREATE TABLE cartorios (
                codigo_cartorio INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                end_uf CHAR(2),
                end_cod_cidade INT,
                end_cod_bairro INT,
                end_logradouro VARCHAR(150),
                end_numero VARCHAR(10),
                end_complemento VARCHAR(10),
                tipo VARCHAR(50) NOT NULL,
                nome_tabeliao VARCHAR(100) NOT NULL,
                horario_funcionamento TIME NOT NULL,
                PRIMARY KEY (codigo_cartorio)
);

ALTER TABLE cartorios COMMENT 'A tabela que armazenam informações sobre os cartórios.';

ALTER TABLE cartorios MODIFY COLUMN codigo_cartorio INTEGER COMMENT 'Código que identifica o cartório. É a PK desta tabela.';

ALTER TABLE cartorios MODIFY COLUMN nome VARCHAR(100) COMMENT 'Atributo que identifica nome do cartório.';

ALTER TABLE cartorios MODIFY COLUMN end_uf CHAR(2) COMMENT 'UF na tabela endereço. É uma FK desta tabela.';

ALTER TABLE cartorios MODIFY COLUMN end_cod_cidade INTEGER COMMENT 'Cidade na tabela endereço. É uma FK desta tabela.';

ALTER TABLE cartorios MODIFY COLUMN end_cod_bairro INTEGER COMMENT 'Bairro na tabela endereço. É uma FK desta tabela.';

ALTER TABLE cartorios MODIFY COLUMN end_logradouro VARCHAR(150) COMMENT 'Atributo que identifica o logradouro na tabela endereço.';

ALTER TABLE cartorios MODIFY COLUMN end_numero VARCHAR(10) COMMENT 'Atributo que identifica o número na tabela endereço.';

ALTER TABLE cartorios MODIFY COLUMN end_complemento VARCHAR(10) COMMENT 'Atributo que identifica o complemento na tabela endereço.';

ALTER TABLE cartorios MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Atributo que identifica o tipo de cartório.';

ALTER TABLE cartorios MODIFY COLUMN nome_tabeliao VARCHAR(100) COMMENT 'Atributo que identifica o nome do tabelião do cartório.';

ALTER TABLE cartorios MODIFY COLUMN horario_funcionamento TIME COMMENT 'Atributo dos horários de cartórios.';


CREATE TABLE pessoas (
                codigo_pessoa INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                end_uf CHAR(2),
                end_cod_cidade INT,
                end_cod_bairro INT,
                end_logradouro VARCHAR(150),
                end_numero VARCHAR(10),
                end_complemento VARCHAR(10),
                end_cep CHAR(8),
                data_nascimento DATE,
                sexo CHAR(1) NOT NULL,
                estado_civil VARCHAR(50) NOT NULL,
                numero_telefone VARCHAR(11) NOT NULL,
                PRIMARY KEY (codigo_pessoa)
);

ALTER TABLE pessoas COMMENT 'A tabela que armazenam informações sobre as pessoas.';

ALTER TABLE pessoas MODIFY COLUMN codigo_pessoa INTEGER COMMENT 'Código que identifica a pessoa. É a PK desta tabela.';

ALTER TABLE pessoas MODIFY COLUMN nome VARCHAR(100) COMMENT 'Atributo que identifica o nome da pessoa.';

ALTER TABLE pessoas MODIFY COLUMN end_uf CHAR(2) COMMENT 'UF na tabela endereço. É uma FK desta tabela.';

ALTER TABLE pessoas MODIFY COLUMN end_cod_cidade INTEGER COMMENT 'Cidade na tabela endereço. É uma FK desta tabela.';

ALTER TABLE pessoas MODIFY COLUMN end_cod_bairro INTEGER COMMENT 'Bairro na tabela endereço. É uma FK desta tabela.';

ALTER TABLE pessoas MODIFY COLUMN end_logradouro VARCHAR(150) COMMENT 'Atributo que identifica o logradouro na tabela endereço.';

ALTER TABLE pessoas MODIFY COLUMN end_numero VARCHAR(10) COMMENT 'Atributo que identifica o número na tabela endereço.';

ALTER TABLE pessoas MODIFY COLUMN end_complemento VARCHAR(10) COMMENT 'Atributo que identifica o complemento na tabela endereço.';

ALTER TABLE pessoas MODIFY COLUMN end_cep CHAR(8) COMMENT 'Atributo que identifica o CEP na tabela endereço.';

ALTER TABLE pessoas MODIFY COLUMN data_nascimento DATE COMMENT 'Atributo que armazena a data de nascimento das pessoas.';

ALTER TABLE pessoas MODIFY COLUMN sexo CHAR(1) COMMENT 'Atributo que armazena o sexo da pessoa.';

ALTER TABLE pessoas MODIFY COLUMN estado_civil VARCHAR(50) COMMENT 'Atributo que armazena o estado civil da pessoa.';

ALTER TABLE pessoas MODIFY COLUMN numero_telefone VARCHAR(11) COMMENT 'O numero de telefone da pessoa cadastrada.';


CREATE TABLE telefones (
                numero_telefone VARCHAR(11) NOT NULL,
                codigo_pessoa INT NOT NULL,
                tipo VARCHAR(50),
                PRIMARY KEY (numero_telefone, codigo_pessoa)
);

ALTER TABLE telefones COMMENT 'A tabela que armazenam informações sobre os telefones cadastrados.';

ALTER TABLE telefones MODIFY COLUMN numero_telefone VARCHAR(11) COMMENT 'O numero de telefone da pessoa. É uma PK.';

ALTER TABLE telefones MODIFY COLUMN codigo_pessoa INTEGER COMMENT 'Código da pessoa nos telefones. É uma PFK desta tabela.';

ALTER TABLE telefones MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Atributo que identifica o tipo de telefone.';


CREATE TABLE bancos (
                codigo_banco INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                end_uf CHAR(2),
                end_cod_cidade INT,
                end_cod_bairro INT,
                end_logradouro VARCHAR(150),
                end_numero VARCHAR(10),
                end_complemento VARCHAR(10),
                end_cep CHAR(8),
                numero_telefone VARCHAR(11),
                site VARCHAR(100),
                codigo_pessoa INT NOT NULL,
                PRIMARY KEY (codigo_banco)
);

ALTER TABLE bancos COMMENT 'A tabela que armazenam informações sobre os bancos.';

ALTER TABLE bancos MODIFY COLUMN codigo_banco INTEGER COMMENT 'Código que identifica o banco. É a PK desta tabela.';

ALTER TABLE bancos MODIFY COLUMN nome VARCHAR(100) COMMENT 'Atributo que identifica o nome dos cartórios.';

ALTER TABLE bancos MODIFY COLUMN end_uf CHAR(2) COMMENT 'UF na tabela endereço. É uma FK desta tabela.';

ALTER TABLE bancos MODIFY COLUMN end_cod_cidade INTEGER COMMENT 'Cidade na tabela endereço. É uma FK desta tabela.';

ALTER TABLE bancos MODIFY COLUMN end_cod_bairro INTEGER COMMENT 'Bairro na tabela endereço. É uma FK desta tabela.';

ALTER TABLE bancos MODIFY COLUMN end_logradouro VARCHAR(150) COMMENT 'Atributo que identifica o logradouro na tabela endereço.';

ALTER TABLE bancos MODIFY COLUMN end_numero VARCHAR(10) COMMENT 'Atributo que identifica o número na tabela endereço.';

ALTER TABLE bancos MODIFY COLUMN end_complemento VARCHAR(10) COMMENT 'Atributo que identifica o complemento na tabela endereço.';

ALTER TABLE bancos MODIFY COLUMN end_cep CHAR(8) COMMENT 'Atributo que identifica o CEP na tabela endereço.';

ALTER TABLE bancos MODIFY COLUMN numero_telefone VARCHAR(11) COMMENT 'Os números de telefones dos bancos. É uma PK desta tabela.';

ALTER TABLE bancos MODIFY COLUMN site VARCHAR(100) COMMENT 'Atributo que armazena o site dos cartórios.';

ALTER TABLE bancos MODIFY COLUMN codigo_pessoa INTEGER COMMENT 'Código que pessoa para identificação. É uma FK desta tabela.';


CREATE TABLE testamentos (
                codigo_testamento INT NOT NULL,
                numero_registro INT NOT NULL,
                data_registro DATE NOT NULL,
                descricao VARCHAR(150) NOT NULL,
                codigo_cartorio INT,
                nome_testemunha VARCHAR(100) NOT NULL,
                codigo_pessoa INT NOT NULL,
                PRIMARY KEY (codigo_testamento)
);

ALTER TABLE testamentos COMMENT 'A tabela que armazenam informações sobre os testamentos.';

ALTER TABLE testamentos MODIFY COLUMN codigo_testamento INTEGER COMMENT 'Código que identifica o testamento. É uma PK desta tabela.';

ALTER TABLE testamentos MODIFY COLUMN numero_registro INTEGER COMMENT 'Atributo que armazena o numero de registro dos testamentos.';

ALTER TABLE testamentos MODIFY COLUMN data_registro DATE COMMENT 'Atributo que armazena a data de registro.';

ALTER TABLE testamentos MODIFY COLUMN descricao VARCHAR(150) COMMENT 'Atributo de uma descrição do testamento.';

ALTER TABLE testamentos MODIFY COLUMN codigo_cartorio INTEGER COMMENT 'Código que identifica o cartório. É uma FK desta tabela.';

ALTER TABLE testamentos MODIFY COLUMN nome_testemunha VARCHAR(100) COMMENT 'Nome da testemunha. É uma FK desta tabela.';

ALTER TABLE testamentos MODIFY COLUMN codigo_pessoa INTEGER COMMENT 'Código da pessoa no testamento. É uma FK desta tabela.';


CREATE TABLE herdeiros (
                codigo_herdeiro INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                end_uf CHAR(2),
                end_cod_cidade INT,
                end_cod_bairro INT,
                end_logradouro VARCHAR(150),
                end_numero VARCHAR(10),
                end_complemento VARCHAR(10),
                end_cep CHAR(8),
                numero_telefone VARCHAR(11),
                email VARCHAR(50),
                data_nascimento DATE NOT NULL,
                sexo CHAR(1) NOT NULL,
                estado_civil VARCHAR(50) NOT NULL,
                codigo_testamento INT,
                codigo_pessoa INT NOT NULL,
                PRIMARY KEY (codigo_herdeiro)
);

ALTER TABLE herdeiros COMMENT 'A tabela que armazenam informações sobre os herdeiros.';

ALTER TABLE herdeiros MODIFY COLUMN codigo_herdeiro INTEGER COMMENT 'Código que identifica o herdeiro. É uma PK desta tabela.';

ALTER TABLE herdeiros MODIFY COLUMN nome VARCHAR(100) COMMENT 'Atributo que identifica o nome dos herdeiros.';

ALTER TABLE herdeiros MODIFY COLUMN end_uf CHAR(2) COMMENT 'UF na tabela endereço. É uma FK desta tabela.';

ALTER TABLE herdeiros MODIFY COLUMN end_cod_cidade INTEGER COMMENT 'Cidade na tabela endereço. É uma FK desta tabela.';

ALTER TABLE herdeiros MODIFY COLUMN end_cod_bairro INTEGER COMMENT 'Bairro na tabela endereço. É uma FK desta tabela.';

ALTER TABLE herdeiros MODIFY COLUMN end_logradouro VARCHAR(150) COMMENT 'Atributo que identifica o logradouro na tabela endereço.';

ALTER TABLE herdeiros MODIFY COLUMN end_numero VARCHAR(10) COMMENT 'Atributo que identifica o número na tabela endereço.';

ALTER TABLE herdeiros MODIFY COLUMN end_complemento VARCHAR(10) COMMENT 'Atributo que identifica o complemento na tabela endereço.';

ALTER TABLE herdeiros MODIFY COLUMN end_cep CHAR(8) COMMENT 'Atributo que identifica o CEP na tabela endereço.';

ALTER TABLE herdeiros MODIFY COLUMN numero_telefone VARCHAR(11) COMMENT 'Os números de telefones dos bancos. É uma PK desta tabela.';

ALTER TABLE herdeiros MODIFY COLUMN email VARCHAR(50) COMMENT 'Atributo que armazena os emails dos herdeiros.';

ALTER TABLE herdeiros MODIFY COLUMN data_nascimento DATE COMMENT 'Atributo que armazena a data de nascimento dos herdeiros.';

ALTER TABLE herdeiros MODIFY COLUMN sexo CHAR(1) COMMENT 'Atributo que armazena o sexo do herdeiro.';

ALTER TABLE herdeiros MODIFY COLUMN estado_civil VARCHAR(50) COMMENT 'Atributo que armazena o estado civil do herdeiro.';

ALTER TABLE herdeiros MODIFY COLUMN codigo_testamento INTEGER COMMENT 'Código que identifica o testamento. É uma FK desta tabela.';

ALTER TABLE herdeiros MODIFY COLUMN codigo_pessoa INTEGER COMMENT 'Código que identifica a pessoa. É uma FK desta tabela.';


CREATE TABLE imagens (
                codigo_imagem INT NOT NULL,
                nome VARCHAR(50) NOT NULL,
                descricao VARCHAR(150) NOT NULL,
                data_registro DATE NOT NULL,
                codigo_cartorio INT,
                codigo_testamento INT,
                codigo_herdeiro INT,
                PRIMARY KEY (codigo_imagem)
);

ALTER TABLE imagens COMMENT 'A tabela que armazenam informações sobre as imagens.';

ALTER TABLE imagens MODIFY COLUMN codigo_imagem INTEGER COMMENT 'Código que identifica a imagem. É a PK desta tabela.';

ALTER TABLE imagens MODIFY COLUMN nome VARCHAR(50) COMMENT 'Atributo que identifica o nome das imagens.';

ALTER TABLE imagens MODIFY COLUMN descricao VARCHAR(150) COMMENT 'Atributo da descrição das imagens.';

ALTER TABLE imagens MODIFY COLUMN data_registro DATE COMMENT 'Atributo das datas de registro das imagens.';

ALTER TABLE imagens MODIFY COLUMN codigo_cartorio INTEGER COMMENT 'Código que identifica o cartório. É uma FK desta tabela.';

ALTER TABLE imagens MODIFY COLUMN codigo_testamento INTEGER COMMENT 'Código que identifica o testamento. É uma FK desta tabela.';

ALTER TABLE imagens MODIFY COLUMN codigo_herdeiro INTEGER COMMENT 'Código que identifica o herdeiro. É uma FK desta tabela.';


CREATE TABLE bens (
                codigo_bem INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                valor_estimado DECIMAL(12,2),
                data_disponibilidade DATE NOT NULL,
                codigo_pessoa INT NOT NULL,
                PRIMARY KEY (codigo_bem)
);

ALTER TABLE bens COMMENT 'A tabela que armazenam informações sobre os bens.';

ALTER TABLE bens MODIFY COLUMN codigo_bem INTEGER COMMENT 'Código que identifica o bem. É a PK desta tabela.';

ALTER TABLE bens MODIFY COLUMN nome VARCHAR(100) COMMENT 'Atributo que identifica o nome dos bens.';

ALTER TABLE bens MODIFY COLUMN valor_estimado DECIMAL(12, 2) COMMENT 'o valor estimado para o bem, vale até R$9.999.999.999,00';

ALTER TABLE bens MODIFY COLUMN data_disponibilidade DATE COMMENT 'Atributo que identifica a data de disponibilidade dos bens.';

ALTER TABLE bens MODIFY COLUMN codigo_pessoa INTEGER COMMENT 'Código que identifica a pessoa. É uma FK desta tabela.';


CREATE TABLE heranca (
                codigo_herdeiro INT NOT NULL,
                codigo_bem INT NOT NULL,
                codigo_imagem INT NOT NULL,
                PRIMARY KEY (codigo_herdeiro, codigo_bem)
);

ALTER TABLE heranca COMMENT 'A tabela que armazenam informações sobre as heranças.';

ALTER TABLE heranca MODIFY COLUMN codigo_herdeiro INTEGER COMMENT 'Código que identifica o herdeiro. É uma PFK desta tabela.';

ALTER TABLE heranca MODIFY COLUMN codigo_bem INTEGER COMMENT 'Código que identifica o bem. É uma PFK desta tabela.';

ALTER TABLE heranca MODIFY COLUMN codigo_imagem INTEGER COMMENT 'Código que identifica a imagem. É a FK desta tabela.';


CREATE TABLE imoveis (
                codigo_bem INT NOT NULL,
                end_uf CHAR(2) NOT NULL,
                end_cod_cidade INT,
                end_cod_bairro INT,
                end_logradouro VARCHAR(150),
                end_numero VARCHAR(10),
                end_complemento VARCHAR(10),
                end_cep CHAR(8),
                tamanho VARCHAR(50) NOT NULL,
                codigo_tipo INT NOT NULL,
                PRIMARY KEY (codigo_bem)
);

ALTER TABLE imoveis COMMENT 'A tabela que armazenam informações sobre os imóveis.';

ALTER TABLE imoveis MODIFY COLUMN codigo_bem INTEGER COMMENT 'Código que identifica o bem. É uma PFK desta tabela.';

ALTER TABLE imoveis MODIFY COLUMN end_uf CHAR(2) COMMENT 'UF na tabela endereço. É uma FK desta tabela.';

ALTER TABLE imoveis MODIFY COLUMN end_cod_cidade INTEGER COMMENT 'Cidade na tabela endereço. É uma FK desta tabela.';

ALTER TABLE imoveis MODIFY COLUMN end_cod_bairro INTEGER COMMENT 'Bairro na tabela endereço. É uma FK desta tabela.';

ALTER TABLE imoveis MODIFY COLUMN end_logradouro VARCHAR(150) COMMENT 'Atributo que identifica o logradouro na tabela endereço.';

ALTER TABLE imoveis MODIFY COLUMN end_numero VARCHAR(10) COMMENT 'Atributo que identifica o número na tabela endereço.';

ALTER TABLE imoveis MODIFY COLUMN end_complemento VARCHAR(10) COMMENT 'Atributo que identifica o complemento na tabela endereço.';

ALTER TABLE imoveis MODIFY COLUMN end_cep CHAR(8) COMMENT 'Atributo que identifica o CEP na tabela endereço.';

ALTER TABLE imoveis MODIFY COLUMN tamanho VARCHAR(50) COMMENT 'Atributo que armazena o tamanho do imóvel.';

ALTER TABLE imoveis MODIFY COLUMN codigo_tipo INTEGER COMMENT 'Código do tipo de imóvel. É uma FK desta tabela.';


CREATE TABLE obras_de_arte (
                codigo_bem INT NOT NULL,
                nome_autor VARCHAR(100) NOT NULL,
                data_criacao DATE NOT NULL,
                PRIMARY KEY (codigo_bem)
);

ALTER TABLE obras_de_arte COMMENT 'A tabela que armazenam informações sobre as obras de arte.';

ALTER TABLE obras_de_arte MODIFY COLUMN codigo_bem INTEGER COMMENT 'Código que identifica o bem. É uma PFK desta tabela.';

ALTER TABLE obras_de_arte MODIFY COLUMN nome_autor VARCHAR(100) COMMENT 'Atributo que identifica o nome do autor da obra.';

ALTER TABLE obras_de_arte MODIFY COLUMN data_criacao DATE COMMENT 'Atributo que identifica a data de criação da obra.';


CREATE TABLE monetarios (
                codigo_bem INT NOT NULL,
                valor DECIMAL(12,2) NOT NULL,
                tipo_moeda VARCHAR(50),
                codigo_banco INT,
                PRIMARY KEY (codigo_bem)
);

ALTER TABLE monetarios COMMENT 'A tabela que armazenam informações sobre os monetários.';

ALTER TABLE monetarios MODIFY COLUMN codigo_bem INTEGER COMMENT 'Código que identifica o bem. É uma PFK desta tabela.';

ALTER TABLE monetarios MODIFY COLUMN valor DECIMAL(12, 2) COMMENT 'Atributo que identifica o valor.';

ALTER TABLE monetarios MODIFY COLUMN tipo_moeda VARCHAR(50) COMMENT 'Atributo que define o tipo de moeda dos monetários.';

ALTER TABLE monetarios MODIFY COLUMN codigo_banco INTEGER COMMENT 'Código que identifica o banco. É a FK desta tabela.';


ALTER TABLE imoveis ADD CONSTRAINT tipo_imovel_imoveis_fk
FOREIGN KEY (codigo_tipo)
REFERENCES tipo_imovel (codigo_tipo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE testamentos ADD CONSTRAINT testemunha_testamentos_fk
FOREIGN KEY (nome_testemunha)
REFERENCES testemunha (nome_testemunha)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE pessoas ADD CONSTRAINT uf_pessoas_fk
FOREIGN KEY (end_uf)
REFERENCES uf (sigla)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE imoveis ADD CONSTRAINT uf_imoveis_fk
FOREIGN KEY (end_uf)
REFERENCES uf (sigla)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE bancos ADD CONSTRAINT uf_bancos_fk
FOREIGN KEY (end_uf)
REFERENCES uf (sigla)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE cartorios ADD CONSTRAINT uf_cartorios_fk
FOREIGN KEY (end_uf)
REFERENCES uf (sigla)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE herdeiros ADD CONSTRAINT uf_herdeiros_fk
FOREIGN KEY (end_uf)
REFERENCES uf (sigla)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE pessoas ADD CONSTRAINT cidades_pessoas_fk
FOREIGN KEY (end_cod_cidade)
REFERENCES cidades (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE imoveis ADD CONSTRAINT cidades_imoveis_fk
FOREIGN KEY (end_cod_cidade)
REFERENCES cidades (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE bancos ADD CONSTRAINT cidades_bancos_fk
FOREIGN KEY (end_cod_cidade)
REFERENCES cidades (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE cartorios ADD CONSTRAINT cidades_cartorios_fk
FOREIGN KEY (end_cod_cidade)
REFERENCES cidades (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE herdeiros ADD CONSTRAINT cidades_herdeiros_fk
FOREIGN KEY (end_cod_cidade)
REFERENCES cidades (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE pessoas ADD CONSTRAINT bairros_pessoas_fk
FOREIGN KEY (end_cod_bairro)
REFERENCES bairros (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE imoveis ADD CONSTRAINT bairros_imoveis_fk
FOREIGN KEY (end_cod_bairro)
REFERENCES bairros (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE bancos ADD CONSTRAINT bairros_bancos_fk
FOREIGN KEY (end_cod_bairro)
REFERENCES bairros (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE cartorios ADD CONSTRAINT bairros_cartorios_fk
FOREIGN KEY (end_cod_bairro)
REFERENCES bairros (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE herdeiros ADD CONSTRAINT bairros_herdeiros_fk
FOREIGN KEY (end_cod_bairro)
REFERENCES bairros (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE testamentos ADD CONSTRAINT cartorios_testamentos_fk
FOREIGN KEY (codigo_cartorio)
REFERENCES cartorios (codigo_cartorio)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE imagens ADD CONSTRAINT cartorios_imagens_fk
FOREIGN KEY (codigo_cartorio)
REFERENCES cartorios (codigo_cartorio)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE bens ADD CONSTRAINT pessoas_bens_fk
FOREIGN KEY (codigo_pessoa)
REFERENCES pessoas (codigo_pessoa)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE testamentos ADD CONSTRAINT pessoas_testamentos_fk
FOREIGN KEY (codigo_pessoa)
REFERENCES pessoas (codigo_pessoa)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE telefones ADD CONSTRAINT pessoas_telefones_fk
FOREIGN KEY (codigo_pessoa)
REFERENCES pessoas (codigo_pessoa)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE herdeiros ADD CONSTRAINT telefones_herdeiros_fk
FOREIGN KEY (numero_telefone, codigo_pessoa)
REFERENCES telefones (numero_telefone, codigo_pessoa)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE bancos ADD CONSTRAINT telefones_bancos_fk
FOREIGN KEY (numero_telefone, codigo_pessoa)
REFERENCES telefones (numero_telefone, codigo_pessoa)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE monetarios ADD CONSTRAINT bancos_monetarios_fk
FOREIGN KEY (codigo_bem)
REFERENCES bancos (codigo_banco)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE monetarios ADD CONSTRAINT bancos_monetarios_fk1
FOREIGN KEY (codigo_banco)
REFERENCES bancos (codigo_banco)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE herdeiros ADD CONSTRAINT testamentos_herdeiros_fk
FOREIGN KEY (codigo_testamento)
REFERENCES testamentos (codigo_testamento)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE imagens ADD CONSTRAINT testamentos_imagens_fk
FOREIGN KEY (codigo_testamento)
REFERENCES testamentos (codigo_testamento)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE imagens ADD CONSTRAINT herdeiros_imagens_fk
FOREIGN KEY (codigo_herdeiro)
REFERENCES herdeiros (codigo_herdeiro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE heranca ADD CONSTRAINT herdeiros_heranca_fk
FOREIGN KEY (codigo_herdeiro)
REFERENCES herdeiros (codigo_herdeiro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE heranca ADD CONSTRAINT imagens_heranca_fk
FOREIGN KEY (codigo_imagem)
REFERENCES imagens (codigo_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE monetarios ADD CONSTRAINT bens_monetarios_fk
FOREIGN KEY (codigo_bem)
REFERENCES bens (codigo_bem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE obras_de_arte ADD CONSTRAINT bens_obras_de_arte_fk
FOREIGN KEY (codigo_bem)
REFERENCES bens (codigo_bem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE imoveis ADD CONSTRAINT bens_imoveis_fk
FOREIGN KEY (codigo_bem)
REFERENCES bens (codigo_bem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE heranca ADD CONSTRAINT bens_heranca_fk
FOREIGN KEY (codigo_bem)
REFERENCES bens (codigo_bem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE pessoas
ADD CONSTRAINT CHECK (sexo IN ("M", "F"));

ALTER TABLE herdeiros
ADD CONSTRAINT CHECK (sexo IN ("M", "F"));

ALTER TABLE tipo_imovel
ADD CONSTRAINT CHECK (tipo IN ("Terreno", "Residencial", "Comercial"));

ALTER TABLE telefones
ADD CONSTRAINT CHECK (tipo IN ("Comercial", "Residencial", "Pessoal"));

ALTER TABLE herdeiros
ADD CONSTRAINT CHECK (estado_civil IN ("Solteiro(a)", "Casado(a)", "Divorciado(a)", "Viúvo(a)", "Separado(a) Juridicamente"));

ALTER TABLE pessoas
ADD CONSTRAINT CHECK (estado_civil IN ("Solteiro(a)", "Casado(a)", "Divorciado(a)", "Viúvo(a)", "Separado(a) Juridicamente"));

ALTER TABLE bens
ADD CONSTRAINT CHECK (valor_estimado BETWEEN "1" AND "10000000.00");

ALTER TABLE monetarios
ADD CONSTRAINT CHECK (valor BETWEEN "1" AND "10000000.00");
