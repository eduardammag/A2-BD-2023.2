CREATE TABLE CLIENTE
(
  ID_cliente INT NOT NULL,
  Foto INT,
  Email INT NOT NULL,
  Nome INT NOT NULL,
  AvaliacaoCliente INT NOT NULL,
  Saldo INT NOT NULL,
  DataNasc INT NOT NULL,
  CPF INT NOT NULL,
  RG INT NOT NULL,
  PRIMARY KEY (ID_cliente),
  UNIQUE (Email),
  UNIQUE (CPF),
  UNIQUE (RG)
);

CREATE TABLE VEICULO
(
  ID_veiculo INT NOT NULL,
  Cor INT NOT NULL,
  Modelo INT NOT NULL,
  Ano INT NOT NULL,
  CRLV INT NOT NULL,
  PlacaVeículo INT NOT NULL,
  PRIMARY KEY (ID_veiculo),
  UNIQUE (CRLV),
  UNIQUE (PlacaVeículo)
);

CREATE TABLE MOTORISTA
(
  ID_motorista INT NOT NULL,
  Genero INT NOT NULL,
  Foto INT NOT NULL,
  Email INT NOT NULL,
  AvaliacaoMotorista INT NOT NULL,
  DataNasc INT NOT NULL,
  CNH INT NOT NULL,
  CPF INT NOT NULL,
  RG INT NOT NULL,
  ID_veiculo INT NOT NULL,
  PRIMARY KEY (ID_motorista),
  FOREIGN KEY (ID_veiculo) REFERENCES VEICULO(ID_veiculo),
  UNIQUE (Email),
  UNIQUE (CNH),
  UNIQUE (CPF),
  UNIQUE (RG)
);

CREATE TABLE PEDIDO
(
  ID_Pedido INT NOT NULL,
  Preco INT NOT NULL,
  Horario INT NOT NULL,
  TipoPedido INT NOT NULL,
  TipoDePagamento INT NOT NULL,
  ID_cliente INT NOT NULL,
  ID_motorista INT,
  PRIMARY KEY (ID_Pedido),
  FOREIGN KEY (ID_cliente) REFERENCES CLIENTE(ID_cliente),
  FOREIGN KEY (ID_motorista) REFERENCES MOTORISTA(ID_motorista)
);

CREATE TABLE Cartao
(
  CVV INT NOT NULL,
  DataExpira INT NOT NULL,
  CodigoCartao INT NOT NULL,
  TipoCartao INT NOT NULL,
  ID_cartao INT NOT NULL,
  PRIMARY KEY (CodigoCartao),
  UNIQUE (ID_cartao)
);

CREATE TABLE Localidade
(
  Rua INT NOT NULL,
  Numero INT NOT NULL,
  Cidade INT NOT NULL,
  Estado INT NOT NULL,
  CodigoZIP INT NOT NULL,
  ID_local INT NOT NULL,
  Bairro INT NOT NULL,
  PRIMARY KEY (ID_local)
);

CREATE TABLE MotAvaliaCli
(
  NotaCliente INT NOT NULL,
  ID_cliente INT NOT NULL,
  ID_motorista INT NOT NULL,
  PRIMARY KEY (ID_cliente, ID_motorista),
  FOREIGN KEY (ID_cliente) REFERENCES CLIENTE(ID_cliente),
  FOREIGN KEY (ID_motorista) REFERENCES MOTORISTA(ID_motorista)
);

CREATE TABLE CliAvaliaMot
(
  NotaMotorista INT NOT NULL,
  ID_motorista INT NOT NULL,
  ID_cliente INT NOT NULL,
  PRIMARY KEY (ID_motorista, ID_cliente),
  FOREIGN KEY (ID_motorista) REFERENCES MOTORISTA(ID_motorista),
  FOREIGN KEY (ID_cliente) REFERENCES CLIENTE(ID_cliente)
);

CREATE TABLE CartPertenceA
(
  CodigoCartao INT NOT NULL,
  ID_cliente INT NOT NULL,
  PRIMARY KEY (CodigoCartao, ID_cliente),
  FOREIGN KEY (CodigoCartao) REFERENCES Cartao(CodigoCartao),
  FOREIGN KEY (ID_cliente) REFERENCES CLIENTE(ID_cliente)
);

CREATE TABLE CLIENTE_Telefone
(
  Telefone INT NOT NULL,
  ID_cliente INT NOT NULL,
  PRIMARY KEY (Telefone, ID_cliente),
  FOREIGN KEY (ID_cliente) REFERENCES CLIENTE(ID_cliente)
);

CREATE TABLE MOTORISTA_Telefone
(
  Telefone INT NOT NULL,
  ID_motorista INT NOT NULL,
  PRIMARY KEY (Telefone, ID_motorista),
  FOREIGN KEY (ID_motorista) REFERENCES MOTORISTA(ID_motorista)
);

CREATE TABLE VIAGEM
(
  HoraInicio INT NOT NULL,
  ID_viagem INT NOT NULL,
  HoraFim INT NOT NULL,
  ID_Pedido INT NOT NULL,
  ID_local_partida INT NOT NULL,
  ID_local_destino INT NOT NULL,
  PRIMARY KEY (ID_viagem),
  FOREIGN KEY (ID_Pedido) REFERENCES PEDIDO(ID_Pedido),
  FOREIGN KEY (ID_local_partida) REFERENCES Localidade(ID_local),
  FOREIGN KEY (ID_local_destino) REFERENCES Localidade(ID_local)
);
