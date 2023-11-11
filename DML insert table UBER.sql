INSERT INTO Cliente (IDCliente, RG, CPF, Saldo, Email, Nome, AvaliacaoCliente, DataNasc, Foto) VALUES
('CL001', 5948136, 57841203698, 10.32, 'joaninha1497@gmail.com', 'Joana Mesquita Magalhães', 1.7, '2005-05-10', 'fotoCL01.png'),
('CL002', 6418529, 20145987666, 230.15, 'guiguizinho1149@gmail.com', 'Guilherme Juliano Castilho', 3.5, '2003-02-28', 'fotoCL02.png'),
('CL003', 3265589, 32547810269, 1500.02, '618145455@outlook.com', 'João Vitor Manuel Sousa', 5.0, '1981-12-02', 'fotoCL03.png'),
('CL004', 3158765, 20154782257, 600.00, 'ruana_oliveira999@hotmail.com', 'Ruana Oliveira Fernandes', 4.9, '2004-11-14', NULL),
('CL005', 2147038, 20154776308, 16.89, 'natalia.font34@uol.com.br', 'Natália Fontenelle Araújo', 2.1, '1998-08-14', 'fotoCL05.png'),
('CL006', 2114697, 15078230694, 231.47, 'justino_milena@yahoo.com.br', 'Milena Justino Tavares', 3.0, '1966-01-01', 'fotoCL06.png'),
('CL007', 1473318, 21508630147, 18.78, 'dudaa_dudinha.love@gmail.com', 'Eduarda Valentim Moura', 4.0, '1986-05-05', 'fotoCL07.png'),
('CL008', 5026709, 20154887206, 170.90, 'gabriela1010@outlook.com', 'Gabriela Lopes Moreira', 3.7, '2002-06-12', NULL),
('CL009', 7045983, 90326990158, 562.33, 'gabrielsantossantos@yahoo.com.br', 'Gabriel Santos Biancardi', 4.8, '1956-03-17', 'fotoCL09.png'),
('CL010', 9035761, 78099758143, 57.99, 'luisasonza.fazsucesso@gmail.com', 'Luisa Sonza Quadros', 4.1, '1956-02-28', NULL);

INSERT INTO MotAvaliaCli VALUES
('MOT001', 'CL01', 2.0),
('MOT001', 'CL02', 4.0),
('MOT003', 'CL03', NULL),
('MOT004', 'CL04', 5.0),
('MOT005', 'CL05', 3.0),
('MOT006', 'CL06', 3.0),
('MOT007', 'CL07', 4.0),
('MOT008', 'CL08', 4.0),
('MOT009', 'CL09', NULL),
('MOT010', 'CL10', 3.0);

INSERT INTO ContatoCliente VALUES
('CL001', '(85)996040621'),
('CL002', '(21)985563214'),
('CL003', '(32)857412562'),
('CL004', '(31)987452614'),
('CL005', '(51)997854213'),
('CL006', '(88)985631478'),
('CL007', '(71)985632147'),
('CL008', '(85)968542136'),
('CL009', '(11)758421369'),
('CL010', '(11)987411563');

INSERT INTO Pedido VALUES
('PD001', 'CL01', 'MOT001', 16.97, 'Crédito', '15:10', 'UberX'),
('PD002', 'CL02', 'MOT001', 45.31, 'Pix', '11:23', 'Confort'),
('PD003', 'CL03', 'MOT003', 57.30, 'Dinheiro', '20:01', 'Black'),
('PD004', 'CL04', 'MOT004', 5.50, 'Pix', '07:12', 'UberX'),
('PD005', 'CL05', 'MOT005', 9.74, 'Débito', '13:57', 'UberX'),
('PD006', 'CL06', 'MOT006', 11.23, 'Débito', '12:11', 'UberX'),
('PD007', 'CL07', 'MOT007', 37.49, 'Débito', '09:35', 'Confort'),
('PD008', 'CL08', 'MOT008', 66.08, 'Crédito', '16:07', 'Black'),
('PD009', 'CL09', 'MOT009', 23.80, 'Dinheiro', '08:00', 'Confort'),
('PD010', 'CL10', 'MOT0010', 14.50, 'Pix', '09:31', 'UberX');


INSERT INTO CreditCard (IDCartao, CodigoCartao, CVV, DataExpira, TipoCartao) VALUES
('CR001', 384723984718, 244, '02/28', 'Débito'),
('CR002', 309482398417, 799, '07/25', 'Crédito'),
('CR003', 204935823094, 127, '01/24', 'Débito'),
('CR004', 338430942493, 546, '05/26', 'Crédito'),
('CR005', 933804957938, 975, '01/25', 'Crédito'),
('CR006', 923482095455, 585, '05/27', 'Crédito'),
('CR007', 518352549834, 975, '09/29', 'Débito'),
('CR008', 935823847264, 678, '07/28', 'Débito'),
('CR009', 834794570434, 786, '05/28', 'Crédito'),
('CR010', 987574647365, 251, '11/28', 'Crédito');


INSERT INTO CreditCardCustomer (IDCartao, IDcliente) VALUES
('CR001', 'CL001'),
('CR002', 'CL002'),
('CR003', 'CL003'),
('CR004', 'CL004'),
('CR005', 'CL005'),
('CR006', 'CL006'),
('CR007', 'CL007'),
('CR008', 'CL008'),
('CR009', 'CL009'),
('CR010', 'CL010');

INSERT INTO Motorista (IDMotorista, CPF, RG, CNH, Email, Nome, DataNasc, Idade, Genero, AvaliacaoMotorista, IDVeiculo, Foto) VALUES
('MOT001', '798.324.285-99', '25.171.500-0', '9347823940', 'felipe.pereira@estagiarios.com', 'Felipe Juan Pereira', '05/09/2001', 22, 'Masculino', 5.0, 'VE01', 'fotoMT01.png'),
('MOT002', '589.093.867-38', '46.147.543-1', '8320493509', 'bianca-daluz79@pmi.com', 'Bianca Vera Luz', '27/04/1972', 51, 'Feminino', 4.6, 'VE02', 'fotoMT02.png'),
('MOT003', '673.160.957-92', '47.537.636-5', '3948347837', 'lopes82@3coreonline.com.br', 'Yago Marreta Lopes', '21/02/1970', 53, 'Masculino', 4.7, 'VE03', 'fotoMT03.png'),
('MOT004', '194.459.529-52', '41.137.469-2', '9823948308', 'thiago.manoel.lima@gitoyota.com.br', 'Thiago Manoel Lima', '27/02/2003', 20, 'Masculino', 4.9, 'VE04', 'fotoMT04.png'),
('MOT005', '143.327.405-13', '46.289.949-4', '2934791848', 'lavinia_trovao@br.flextronics.com', 'Lavínia Emilly Trovão', '19/05/2000', 23, 'Feminino', 4.9, 'VE05', 'fotoMT05.png'),
('MOT006', '160.027.877-98', '45.085.382-2', '1394820944', 'adriana@alway.com.br', 'Adriana Costeleta', '13/04/2002', 21, 'Feminino', 5.0, 'VE06', 'fotoMT06.png'),
('MOT007', '903.589.306-93', '10.809.982-9', '9847239847', 'rezende@gmailo.com', 'Marilia Rezende', '18/05/2005', 18, 'Feminino', 4.8, 'VE07', 'fotoMT07.png'),
('MOT008', '708.844.543-39', '46.943.886-1', '6874856798', 'lindemann97@clcimoveis.com.br', 'Till Lindemann', '24/02/1985', 38, 'Masculino', 4.3, 'VE08', 'fotoMT08.png'),
('MOT009', '488.948.221-09', '27.822.204-3', '5962495535', 'isaac.modest@email.com', 'Isaac Brock', '22/09/1992', 31, 'Masculino', 4.8, 'VE09', 'fotoMT09.png'),
('MOT010', '244.614.852-26', '19.329.060-1', '3094840954', 'chaves@email.com', 'Chaves Teixeira', '12/01/1981', 42, 'Masculino', 4.7, 'VE10', 'fotoMT010.png');


INSERT INTO ClienteMotorista (IDcliente, IDMotorista, NotaMotorista) VALUES
('CL001', 'MOT001', 5.0),
('CL002', 'MOT001', NULL),
('CL003', 'MOT003', 4.0),
('CL004', 'MOT004', NULL),
('CL005', 'MOT005', 5.0),
('CL006', 'MOT006', 5.0),
('CL007', 'MOT007', NULL),
('CL008', 'MOT008', 3.0),
('CL009', 'MOT009', 5.0),
('CL010', 'MOT010', 4.0);

INSERT INTO MotoristaTelefone (IDMotorista, Telefone) VALUES
('MOT001', '(19) 98533-7435'),
('MOT001', '(22) 98428-5714'),
('MOT003', '(84) 98981-2548'),
('MOT004', '(63) 99463-9375'),
('MOT005', '(24) 99490-0826'),
('MOT006', '(98) 99511-7495'),
('MOT007', '(85) 99686-5490'),
('MOT008', '(92) 98600-0443'),
('MOT009', '(34) 98497-9856'),
('MOT010', '(97) 98282-2384');


INSERT INTO Veiculo (IDVeiculo, PlacaVeiculo, CRLV, Marca, Modelo, Ano, Cor) VALUES
('VE001', 'NET-3C22', 54036306412, 'Fiat', 'Cronos', 2019, 'Preto'),
('VE002', 'KJZ-0A31', 91273745733, 'Ford', 'Ka', 2018, 'Branco'),
('VE003', 'KUH-1B77', 12391239739, 'Renault', 'Sandeiro', 2016, 'Marrom'),
('VE004', 'QIM-8A45', 66491266351, 'Volkswagen', 'Virtus', 2021, 'Prata'),
('VE005', 'OTS-8G26', 45373772382, 'Nissan', 'Versa', 2017, 'Branco'),
('VE006', 'PZC-9F55', 24256278311, 'Hyundai', 'HB20', 2022, 'Prata'),
('VE007', 'NFS-8H01', 31138784304, 'Nissan', 'Versa', 2019, 'Cinza'),
('VE008', 'SPA-7B96', 82021290367, 'Chevrolet', 'Onix Plus', 2022, 'Vinho'),
('VE009', 'PMN-2D10', 60903796301, 'Fiat', 'Cronos', 2020, 'Preto'),
('VE010', 'TUC-1E80', 39786302355, 'Nissan', 'Versa', 2019, 'Preto');


INSERT INTO Localizacao (IDlocal, CódigoZIP, Estado, Cidade, Bairro, Rua, Número) VALUES
('LOC001', 60330649, 'Paraná', 'Jaboti', 'Vila Ipiranga', 'João Manuel', 1158),
('LOC002', 95247861, 'Ceará', 'Fortaleza', 'Barra do Ceará', 'Getúlio Vargas', 4478),
('LOC003', 78426912, 'Minas Gerais', 'Juiz de Fora', 'Benfica', 'Presidente Campo Sales', 306),
('LOC004', 47820631, 'Rio de Janeiro', 'Rio de Janeiro', 'Catete', 'Marquês de Abrantes', 11),
('LOC005', 20547898, 'São Paulo', 'São Paulo', 'Jardim América', 'General Tomé Cordeiro', 582),
('LOC006', 57411053, 'São Paulo', 'São Paulo', 'Serrinha', 'Três', 1149),
('LOC007', 55267113, 'Minas Gerais', 'Betim', 'Aldeota', 'Rua das Margaridas', 5896),
('LOC008', 23341586, 'Rio de Janeiro', 'Rio de Janeiro', 'Piedade', 'Jandira', 526),
('LOC009', 85735243, 'Bahia', 'Salvador', 'Varjota', 'José de Alencar', 48),
('LOC010', 93854968, 'Minas Gerais', 'Belo Horizonte', 'Jardim Paulista', 'Travessa do Estranho', 97);


INSERT INTO Viagem (IDVIAGEM, IDPedido, IDlocalpartida, IDlocal_destino, HoraInicio, HoraFim) VALUES
('VG001', 'PD001', 'LOC001', 'LOC004', '15:14', '15:24'),
('VG002', 'PD002', 'LOC002', 'LOC007', '11:24', '12:02'),
('VG003', 'PD003', 'LOC003', 'LOC010', '20:07', '20:48'),
('VG004', 'PD004', 'LOC004', 'LOC003', '07:16', '07:20'),
('VG005', 'PD005', 'LOC005', 'LOC006', '13:59', '14:10'),
('VG006', 'PD006', 'LOC006', 'LOC001', '12:15', '12:21'),
('VG007', 'PD007', 'LOC007', 'LOC003', '09:40', '10:01'),
('VG008', 'PD008', 'LOC008', 'LOC005', '16:08', '17:05'),
('VG009', 'PD009', 'LOC009', 'LOC006', '08:02', '08:25'),
('VG010', 'PD010', 'LOC010', 'LOC008', '09:34', '09:43');
