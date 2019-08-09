DROP TABLE IF EXISTS movimentacao;

CREATE TABLE movimentacao (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  data DATE,
  descricao VARCHAR(50),
  moeda VARCHAR(2),
  valor DECIMAL,
  categoria VARCHAR(50)
);

insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('21-03-2019', 'dd-MM-yyyy'), 'INGRESSO.COM', 'R$', -159.53, 'diversao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('17-02-2019', 'dd-MM-yyyy'), 'TAM SITE', 'R$', -430.49, 'viagem');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('01-06-2019', 'dd-MM-yyyy'), 'Uber Do Brasil Tecnolog', 'R$', -7.04, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('22-03-2019', 'dd-MM-yyyy'), 'IBIS PARQUE OLIMPICO', 'R$', -143.15, 'hospedagem');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('27-03-2019', 'dd-MM-yyyy'), 'PONTO FRIOCOM', 'R$', -213.26, '');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('29-05-2019', 'dd-MM-yyyy'), 'Hirota', 'R$', -13, 'alimentacao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('24-05-2019', 'dd-MM-yyyy'), 'Evino', 'R$', -62.43, 'alimentacao');
insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('21-05-2019', 'dd-MM-yyyy'), 'Camila Souza', 'R$', 35.00);
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('24-05-2019', 'dd-MM-yyyy'), 'Uber Do Brasil Tecnolog', 'R$', -6.66, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('26-05-2019', 'dd-MM-yyyy'), 'SONDA SUPERMERCADO', 'R$', -41.89, 'alimentacao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('26-04-2019', 'dd-MM-yyyy'), 'LOJAS RENNER FL', 'R$', -59.95, 'vestuario');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('25-05-2019', 'dd-MM-yyyy'), 'COMETA TIETE', 'R$', -28.28, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('26-05-2019', 'dd-MM-yyyy'), 'Uber Do Brasil Tecnolog', 'R$', -9.39, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('03-06-2019', 'dd-MM-yyyy'), 'ITUNES.COM/BILL', 'R$', -16.9, 'diversao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('27-05-2019', 'dd-MM-yyyy'), 'EBANX AIRBNB', 'R$', -1430.44, 'hospedagem');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('25-05-2019', 'dd-MM-yyyy'), 'Droga Raia', 'R$', -14.09, 'higiene');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('27-05-2019', 'dd-MM-yyyy'), 'Droga Raia', 'R$', -13.98, 'higiene');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('30-05-2019', 'dd-MM-yyyy'), 'HARU LANCHONETE', 'R$', -75.9, 'alimentacao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('02-06-2019', 'dd-MM-yyyy'), 'Uber Do Brasil Tecnolog', 'R$', -6.09, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('21-03-2019', 'dd-MM-yyyy'), 'NESPRESSO', 'R$', -55.9, 'alimentacao');
insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('02-06-2019', 'dd-MM-yyyy'), 'Jose Mota', 'R$', 35);
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('20-06-2019', 'dd-MM-yyyy'), 'EBANX AIRBNB', 'R$', -338.6, 'hospedagem');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('02-06-2019', 'dd-MM-yyyy'), 'RECARGAPAY BILH UNICO', 'R$', -10, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('27-05-2019', 'dd-MM-yyyy'), 'ITUNES.COM/BILL', 'R$', -74.9, 'diversao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('05-06-2019', 'dd-MM-yyyy'), 'Uber Do Brasil Tecnolog', 'R$', -7.03, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('12-06-2019', 'dd-MM-yyyy'), 'ITUNES.COM/BILL', 'R$', -10.9, 'diversao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('25-05-2019', 'dd-MM-yyyy'), 'Uber Do Brasil Tecnolog', 'R$', -8.65, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('20-06-2019', 'dd-MM-yyyy'), 'EBANX AIRBNB', 'R$', -338.75, 'hospedagem');
insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('21-05-2019', 'dd-MM-yyyy'), 'Antonio Coutinho', 'R$', 120.00);
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('25-05-2019', 'dd-MM-yyyy'), 'UATT', 'R$', -79.9, 'alimentacao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('11-07-2019', 'dd-MM-yyyy'), 'Auto Posto Shell', 'R$', -50.00, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('24-06-2019', 'dd-MM-yyyy'), 'Ofner', 'R$', -23.80, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('25-06-2019', 'dd-MM-yyyy'), 'Urbe Cafe', 'R$', -45.10, 'alimentacao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('30-06-2019', 'dd-MM-yyyy'), 'Assai Atacadista', 'R$', -9.96, 'alimentacao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('30-06-2019', 'dd-MM-yyyy'), 'Uber Do Brasil', 'R$', -4.16, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('02-07-2019', 'dd-MM-yyyy'), 'Maremonti Campo Belo', 'R$', -12.32, 'alimentacao');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('03-07-2019', 'dd-MM-yyyy'), 'Uber Do Brasil', 'R$', -7.63, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('05-07-2019', 'dd-MM-yyyy'), 'Zelo', 'R$', -16.65, 'vestuario');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('05-07-2019', 'dd-MM-yyyy'), 'Lucky Comercio', 'R$', -69.99, '');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('06-07-2019', 'dd-MM-yyyy'), 'Unidas Locadora', 'R$', -523.17, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('07-07-2019', 'dd-MM-yyyy'), 'Farmacia Paraiso', 'R$', -12.50, 'higiene');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('07-07-2019', 'dd-MM-yyyy'), 'Posto Vale Da Lua Ltda', 'R$', -180.06, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('09-07-2019', 'dd-MM-yyyy'), 'Unidas Locadora', 'R$', -40.40, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('12-07-2019', 'dd-MM-yyyy'), 'World Tennis', 'R$', -28.08, 'vestuario');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('15-05-2019', 'dd-MM-yyyy'), 'Otica Max', 'R$', -55.00, 'vestuario');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('17-05-2019', 'dd-MM-yyyy'), 'Lojas Renner', 'R$', -53.24, 'vestuario');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('17-06-2019', 'dd-MM-yyyy'), 'Centauro', 'R$', -105.00, 'vestuario');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('09-07-2019', 'dd-MM-yyyy'), 'Posto Vale Da Lua Ltda', 'R$', -168.48, 'transporte');
insert into movimentacao(data, descricao, moeda, valor, categoria) values ( parsedatetime('13-07-2019', 'dd-MM-yyyy'), 'Assai Atacadista', 'R$', -140.91, 'alimentacao');
insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('10-07-2019', 'dd-MM-yyyy'), 'Marcelo B.', 'R$', 50.00);
insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('04-07-2019', 'dd-MM-yyyy'), 'Antonio C.', 'R$', 15.00);
insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('02-07-2019', 'dd-MM-yyyy'), 'Luciano N.', 'R$', 68.00);
insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('19-04-2019', 'dd-MM-yyyy'), 'Marcelo B.', 'R$', 62.00);
insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('07-05-2019', 'dd-MM-yyyy'), 'Douglas S.', 'R$', 45.00);
insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('20-05-2019', 'dd-MM-yyyy'), 'Daniela S.', 'R$', 6.00);
insert into movimentacao(data, descricao, moeda, valor) values ( parsedatetime('13-06-2019', 'dd-MM-yyyy'), 'Renata B.', 'R$', 268.5);
