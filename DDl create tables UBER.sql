CREATE TABLE Cliente
(
  ID_Cliente VARCHAR(5) NOT NULL,
  Nome VARCHAR(50) NOT NULL,
  RG VARCHAR(12) NOT NULL,
  CPF CHAR(11) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  AvaliacaoCliente DECIMAL(1, 2),
  Saldo DECIMAL(10, 2) NOT NULL,
  DataNasc DATE NOT NULL,
  Foto VARCHAR(20),
  PRIMARY KEY (ID_Cliente),
  UNIQUE (Email),
  UNIQUE (CPF),
  UNIQUE (RG)
);

CREATE TABLE Veiculo
(
  ID_Veiculo VARCHAR(5) NOT NULL,
  PlacaVeiculo CHAR(7)INT NOT NULL,
  Marca VARCHAR(20),
  Modelo VARCHAR(20) NOT NULL,
  Ano INT NOT NULL,
  Cor VARCHAR(10) NOT NULL,
  CRLV BIGINT NOT NULL,
  PRIMARY KEY (ID_Veiculo),
  UNIQUE (CRLV),
  UNIQUE (PlacaVeiculo)
);

CREATE TABLE Motorista
(
  ID_Motorista VARCHAR(6) NOT NULL,
  Nome VARCHAR(50),
  Genero VARCHAR(9) NOT NULL,
  CNH CHAR(10) NOT NULL,
  CPF CHAR(11) NOT NULL,
  RG VARCHAR(11) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  DataNasc DATE NOT NULL,
  AvaliacaoMotorista DECIMAL(1, 2) NOT NULL,
  ID_Veiculo VARCHAR(4) NOT NULL,
  Foto VARCHAR(12) NOT NULL,
  PRIMARY KEY (ID_Motorista),
  FOREIGN KEY (ID_Veiculo) REFERENCES Veiculo(ID_Veiculo),
  UNIQUE (Email),
  UNIQUE (CNH),
  UNIQUE (CPF),
  UNIQUE (RG)
);

CREATE TABLE Pedido
(
  ID_Pedido VARCHAR(5) NOT NULL,
  ID_Cliente VARCHAR(5) NOT NULL,
  ID_Motorista VARCHAR(6),
  Preco DECIMAL(6, 2),
  Horario TIME NOT NULL,
  TipoPedido VARCHAR(20) NOT NULL,
  TipoDePagamento VARCHAR(20) NOT NULL,
  PRIMARY KEY (ID_Pedido),
  FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
  FOREIGN KEY (ID_Motorista) REFERENCES Motorista(ID_Motorista)
);

CREATE TABLE Cartao
(
  ID_Cartao VARCHAR(5) NOT NULL,
  CodigoCartao CHAR(16) NOT NULL,
  CVV INT NOT NULL,
  DataExpira DATE NOT NULL,
  TipoCartao VARCHAR(7) NOT NULL,
  PRIMARY KEY (ID_Cartao),
  UNIQUE (CodigoCartao)
);

CREATE TABLE Localidade
(
  ID_Local VARCHAR(6) NOT NULL,
  CodigoZIP INT NOT NULL,
  Estado VARCHAR(20) NOT NULL,
  Cidade VARCHAR(20) NOT NULL,
  Bairro VARCHAR(20) NOT NULL,
  Rua VARCHAR(50) NOT NULL,
  Numero INT NOT NULL,
  PRIMARY KEY (ID_Local)
);

CREATE TABLE MotAvaliaCli
(
  ID_Motorista VARCHAR(6) NOT NULL,
  ID_Cliente VARCHAR(5) NOT NULL,
  NotaCliente DECIMAL(1, 2) NOT NULL,
  PRIMARY KEY (ID_Cliente, ID_Motorista),
  FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
  FOREIGN KEY (ID_Motorista) REFERENCES Motorista(ID_Motorista)
);

CREATE TABLE CliAvaliaMot
(
  ID_Cliente VARCHAR(5) NOT NULL,
  ID_Motorista VARCHAR(6) NOT NULL,
  NotaMotorista DECIMAL(1, 2) NOT NULL,
  PRIMARY KEY (ID_Motorista, ID_Cliente),
  FOREIGN KEY (ID_Motorista) REFERENCES Motorista(ID_Motorista),
  FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE CartPertenceA
(
  ID_Cartao VARCHAR(5) NOT NULL,
  ID_Cliente VARCHAR(4) NOT NULL,
  PRIMARY KEY (ID_Cartao, ID_Cliente),
  FOREIGN KEY (ID_Cartao) REFERENCES Cartao(ID_Cartao),
  FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE ClienteTelefone
(
  ID_Cliente VARCHAR(5) NOT NULL,
  Telefone VARCHAR(15) NOT NULL,
  PRIMARY KEY (Telefone, ID_Cliente),
  FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE MotoristaTelefone
(
  ID_Motorista VARCHAR(5) NOT NULL,
  Telefone VARCHAR(15) NOT NULL,
  PRIMARY KEY (Telefone, ID_Motorista),
  FOREIGN KEY (ID_Motorista) REFERENCES Motorista(ID_Motorista)
);

CREATE TABLE Viagem
(
  ID_Viagem VARCHAR(4) NOT NULL,
  ID_Pedido VARCHAR(4) NOT NULL
  HoraInicio TIME NOT NULL,
  HoraFim TIME NOT NULL,
  ID_Local_Partida VARCHAR(6) NOT NULL,
  ID_Local_Destino VARCHAR(6) NOT NULL,
  PRIMARY KEY (ID_Viagem),
  FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido),
  FOREIGN KEY (ID_Local_Partida) REFERENCES Localidade(ID_Local),
  FOREIGN KEY (ID_Local_Destino) REFERENCES Localidade(ID_Local)
);
