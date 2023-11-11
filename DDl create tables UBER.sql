CREATE TABLE Cliente
(
  IDCliente VARCHAR(5) NOT NULL,
  Nome VARCHAR(50) NOT NULL,
  RG VARCHAR(12) NOT NULL,
  CPF CHAR(11) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  AvaliacaoCliente DECIMAL(3, 2),
  Saldo DECIMAL(10, 2) NOT NULL,
  DataNasc DATE NOT NULL,
  Foto VARCHAR(20),
  PRIMARY KEY (IDCliente),
  UNIQUE (Email),
  UNIQUE (CPF),
  UNIQUE (RG)
);

CREATE TABLE Veiculo
(
  IDVeiculo VARCHAR(5) NOT NULL,
  PlacaVeiculo CHAR(8) NOT NULL,
  Marca VARCHAR(20),
  Modelo VARCHAR(20) NOT NULL,
  Ano INT NOT NULL,
  Cor VARCHAR(10) NOT NULL,
  CRLV BIGINT NOT NULL,
  PRIMARY KEY (IDVeiculo),
  UNIQUE (CRLV),
  UNIQUE (PlacaVeiculo)
);

CREATE TABLE Motorista
(
  IDMotorista VARCHAR(6) NOT NULL,
  Nome VARCHAR(50),
  Genero VARCHAR(9) NOT NULL,
  CNH CHAR(10) NOT NULL,
  CPF CHAR(11) NOT NULL,
  RG VARCHAR(11) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  DataNasc DATE NOT NULL,
  AvaliacaoMotorista DECIMAL(3, 2) NOT NULL,
  IDVeiculo VARCHAR(5) NOT NULL,
  Foto VARCHAR(20) NOT NULL,
  PRIMARY KEY (IDMotorista),
  FOREIGN KEY (IDVeiculo) REFERENCES Veiculo(IDVeiculo),
  UNIQUE (Email),
  UNIQUE (CNH),
  UNIQUE (CPF),
  UNIQUE (RG)
);

CREATE TABLE Pedido
(
  IDPedido VARCHAR(5) NOT NULL,
  IDCliente VARCHAR(5) NOT NULL,
  IDMotorista VARCHAR(6),
  Preco MONEY,
  Horario TIME NOT NULL,
  TipoPedido VARCHAR(20) NOT NULL,
  TipoDePagamento VARCHAR(20) NOT NULL,
  PRIMARY KEY (IDPedido),
  FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente),
  FOREIGN KEY (IDMotorista) REFERENCES Motorista(IDMotorista)
);

CREATE TABLE Cartao
(
  IDCartao VARCHAR(5) NOT NULL,
  CodigoCartao CHAR(16) NOT NULL,
  CVV INT NOT NULL,
  DataExpira CHAR(5) NOT NULL,
  TipoCartao VARCHAR(7) NOT NULL,
  PRIMARY KEY (IDCartao),
  UNIQUE (CodigoCartao)
);

CREATE TABLE Localidade
(
  IDLocal VARCHAR(6) NOT NULL,
  CodigoZIP INT NOT NULL,
  Estado VARCHAR(20) NOT NULL,
  Cidade VARCHAR(20) NOT NULL,
  Bairro VARCHAR(20) NOT NULL,
  Rua VARCHAR(50) NOT NULL,
  Numero INT NOT NULL,
  PRIMARY KEY (IDLocal)
);

CREATE TABLE MotAvaliaCli
(
  IDMotorista VARCHAR(6) NOT NULL,
  IDCliente VARCHAR(5) NOT NULL,
  NotaCliente DECIMAL(3, 2),
  PRIMARY KEY (IDCliente, IDMotorista),
  FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente),
  FOREIGN KEY (IDMotorista) REFERENCES Motorista(IDMotorista)
);

CREATE TABLE CliAvaliaMot
(
  IDCliente VARCHAR(5) NOT NULL,
  IDMotorista VARCHAR(6) NOT NULL,
  NotaMotorista DECIMAL(3, 2),
  PRIMARY KEY (IDMotorista, IDCliente),
  FOREIGN KEY (IDMotorista) REFERENCES Motorista(IDMotorista),
  FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente)
);

CREATE TABLE CartPertenceA
(
  IDCartao VARCHAR(5) NOT NULL,
  IDCliente VARCHAR(5) NOT NULL,
  PRIMARY KEY (IDCartao, IDCliente),
  FOREIGN KEY (IDCartao) REFERENCES Cartao(IDCartao),
  FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente)
);

CREATE TABLE ClienteTelefone
(
  IDCliente VARCHAR(5) NOT NULL,
  Telefone VARCHAR(15) NOT NULL,
  PRIMARY KEY (Telefone, IDCliente),
  FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente)
);

CREATE TABLE MotoristaTelefone
(
  IDMotorista VARCHAR(6) NOT NULL,
  Telefone VARCHAR(15) NOT NULL,
  PRIMARY KEY (Telefone, IDMotorista),
  FOREIGN KEY (IDMotorista) REFERENCES Motorista(IDMotorista)
);

CREATE TABLE Viagem
(
  IDViagem VARCHAR(5) NOT NULL,
  IDPedido VARCHAR(5) NOT NULL,
  HoraInicio TIME NOT NULL,
  HoraFim TIME NOT NULL,
  IDLocalPartida VARCHAR(6) NOT NULL,
  IDLocalDestino VARCHAR(6) NOT NULL,
  PRIMARY KEY (IDViagem),
  FOREIGN KEY (IDPedido) REFERENCES Pedido(IDPedido),
  FOREIGN KEY (IDLocalPartida) REFERENCES Localidade(IDLocal),
  FOREIGN KEY (IDLocalDestino) REFERENCES Localidade(IDLocal)
);
