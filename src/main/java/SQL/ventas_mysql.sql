CREATE DATABASE ventas3;
USE ventas3;

CREATE TABLE articulos (
  art_cod char(5) NOT NULL DEFAULT '' ,
  art_nom varchar(30) ,
  art_uni char(4) ,
  art_pre decimal(10,2) ,
  art_stk int(11) ,
  PRIMARY KEY (art_cod)
);


INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0001", "MOUSE GENIOUS", "UNI", "25.00", "235");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0002", "PENTIUM III 600", "UNI", "150.00", "220");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0003", "PENTIUM IV 2.5 GB", "UNI", "150.00", "220");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0004", "FUNDAS NAYLON", "MTS", "40.00", "35");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0005", "MEMORIA ZIP 32", "UNI", "60.00", "80");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0006", "TINTA BJC21 B/N", "CAJ", "20.00", "20");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0007", "IMPRESORA EPSON 1234", "UNI", "355.00", "120");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0008", "MONITOR SYNMASTER 3N", "UNI", "300.00", "33");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0009", "MONITOR VIEWSONIC", "UNI", "450.00", "92");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0010", "PENTIUM MMX 260", "UNI", "120.00", "97");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0011", "MOUSE MICROSOFT", "UNI", "50.00", "320");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0012", "MEMORIA DIMM 64", "UNI", "60.00", "25");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0013", "MEMORIA DIMM 128", "UNI", "82.00", "25");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0014", "IMPRESORA CANON 1000", "UNI", "205.00", "200");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0015", "IMPRESORA Sansung Laser", "UNI", "1805.00", "200");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0016", "TINTA BJC21 COLOR", "UNI", "20.00", "120");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0017", "TINTA B/n  484", "UNI", "20.00", "120");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0018", "TINTA Color 624", "UNI", "20.00", "120");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0019", "TECLADO EPSON 102", "UNI", "75.00", "122");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0020", "MOUSE TECH", "UNI", "30.00", "190");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0021", "USB KISTON 128", "UNI", "160.00", "97");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0022", "USB DE 256", "UNI", "220.00", "20");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0023", "USB DE 512", "UNI", "260.00", "25");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0024", "AMPLIFICADOR TRINITON", "UNI", "100.00", "20");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0025", "PARLANTES DE 50 watss ", "UNI", "70.00", "12");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0026", "TECLADO EPSON 102", "UNI", "75.00", "122");
INSERT INTO articulos (art_cod, art_nom, art_uni, art_pre, art_stk) VALUES("A0027", "MOUSE TECH", "UNI", "30.00", "190");

CREATE TABLE clientes (
  cli_cod char(5) NOT NULL DEFAULT '' ,
  cli_nom varchar(35) ,
  cli_tel char(8) ,
  cli_cor varchar(30) ,
  cli_dir varchar(30) ,
  cli_cre decimal(8,1) ,
  PRIMARY KEY (cli_cod)
);


INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0001", "Alvarez Perez,Angel", "123-4567", "correo@correo.com", "Av. La Marina 1234", "3500.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0002", "Ponte Gomez, ALEJANDRO", "658-4503", "correo@correo.com", "Av. Pardo 456  ", "2800.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0003", "Zuriga Mateo,Carlos", "567-4566", NULL, "Av. Principal 123 ", "1200.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0004", "Tucto de Souza,Bernardo", "567-4566", NULL, "Av. Principal 123 ", "1200.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0005", "Vilela Bustamante,Percy", NULL, "correo@correo.com", "Calle San Pedro 134", "600.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0007", "Montes Diaz, MIGUEL", "567-8356", "correo@correo.com", "Jr. Naranjos 5689", "3100.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0008", "Rojas Gallo, Jorge", "789-4568", "correo@correo.com", "Av. Habich 543", "2700.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0009", "Garcia La Riva,Guiliana", "789-4073", "correo@correo.com", "Av. Iquitos 228", "3400.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0011", "Wong Atoccsa, Isarrael", "768-5704", NULL, "Calle Cueva 432   ", NULL);
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0012", "Lian Arias, FERNANDO", NULL, "correo@correo.com", "Av. Javier Prado 114", "600.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0013", "Vergara Hidalgo, Jose", "567-8466", "correo@correo.com", "Jr. Pio XII 112   ", NULL);
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0014", "Bustamante Moptta, Diego", "567-4566", NULL, "Av. Principal 123", "1200.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0015", "Alvarado Cueva, Guiliana", "456-3457", "correo@correo.com", "Jr. Dominico 554", "5000.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0016", "Antero Flores, Gregorio", "746-0647", "correo@correo.com", "Jr. Salavery 876  ", "2100.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0017", "Diaz Mal Partida,Jose", "567-4566", NULL, "Av. Guardia Civil 123 ", "1200.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0018", "Gutierrez Pazos , Mauricio", "897-5783", "correo@correo.com", "Av. Habich 4567   ", "800.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0019", "Mendoza Ramirez, Ester", "958-3569", "correo@correo.com", "Av. Wilson 678", "2600.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0020", "Salazar Santiago, Merlo", "654-6534", "correo@correo.com", "Av. Pardo 567", "4100.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0021", "Carrasco Lee, Laura", "267-8958", "correo@correo.com", "Av. Wilson 1267   ", "700.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0022", "Rosas La Riva,Guiliana", "789-4073", "correo@correo.com", "Av. Iquitos 228", "400.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0023", "Caceres Atoccsa, Isarrael", "768-5704", NULL, "Calle Cueva 432   ", NULL);
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0024", "Sanchez Bricelo, FERNANDO", NULL, "correo@correo.com", "Av. Javier Prado 114", "1600.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0025", "Mego Mendoza, Jose", "567-8466", "correo@correo.com", "Jr. Pio XII 112", NULL);
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0026", "Bustamante Porta, Diego", "567-4566", NULL, "Av. Principal 123 ", "1200.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0027", "Meza Cuadra, Guiliana", "456-3457", "correo@correo.com", "Jr. Dominico 554", "2000.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0028", "Portila Flores, Gregorio", "746-0647", "correo@correo.com", "Jr. Salavery 876", "2100.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0029", "Quiroz Salvador,Jose", "567-4566", NULL, "Av. Guardia Civil 123 ", "1200.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0030", "Sotelo Mateo , Mauricio", "897-5783", "correo@correo.com", "Av. Habich 4567", "800.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0031", "Mendez landeo, Ester", "958-3569", "correo@correo.com", "Av. Wilson 678", "2600.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0032", "Inafuku Salazar, Merlo", "654-6534", "correo@correo.com", "Av. Pardo 567", "4100.0");
INSERT INTO clientes (cli_cod, cli_nom, cli_tel, cli_cor, cli_dir, cli_cre) VALUES("C0033", "Chuquizita Leonardo, Laura", "267-8958", "correo@correo.com", "Av. Wilson 1267", "700.0");


CREATE TABLE fac_cabe (
  fac_num char(12) NOT NULL DEFAULT '' ,
  fac_fec datetime ,
  cli_cod char(5) ,
  fac_igv char(1) ,
  ven_cod int(11) ,
  PRIMARY KEY (fac_num)
);

INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0001", "2017-10-09 00:00:00", "C0007", "S", "1");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0002", "2017-11-09 00:00:00", "C0005", "S", "2");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0003", "2017-11-09 00:00:00", "C0016", "N", "2");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0004", "2017-11-09 00:00:00", "C0002", "S", "1");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0005", "2017-11-09 00:00:00", "C0005", "N", "3");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0006", "2017-11-09 00:00:00", "C0002", "N", "4");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0007", "2017-12-09 00:00:00", "C0016", "N", "5");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0008", "2017-12-09 00:00:00", "C0005", "S", "5");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0009", "2017-12-09 00:00:00", "C0020", "N", "6");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0010", "2017-07-09 00:00:00", "C0005", "N", "7");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0011", "2018-07-09 00:00:00", "C0012", "N", "10");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0012", "2018-09-09 00:00:00", "C0012", "S", "7");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0013", "2018-10-09 00:00:00", "C0002", "S", "6");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0014", "2018-12-09 00:00:00", "C0011", "S", "11");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0015", "2018-11-09 00:00:00", "C0018", "N", "12");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0016", "2018-11-09 00:00:00", "C0012", "S", "11");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0017", "2018-12-09 00:00:00", "C0001", "N", "13");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0018", "2018-12-09 00:00:00", "C0002", "N", "13");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0019", "2018-09-09 00:00:00", "C0001", "S", "14");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0020", "2018-07-09 00:00:00", "C0002", "N", "15");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0021", "2018-07-09 00:00:00", "C0003", "S", "16");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0022", "2018-06-09 00:00:00", "C0004", "N", "17");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0023", "2018-06-09 00:00:00", "C0005", "S", "19");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0024", "2018-05-09 00:00:00", "C0004", "N", "19");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0025", "2018-05-09 00:00:00", "C0005", "S", "11");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0026", "2018-05-09 00:00:00", "C0004", "N", "14");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0027", "2018-04-09 00:00:00", "C0005", "N", "1");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0028", "2018-04-09 00:00:00", "C0004", "N", "10");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0029", "2019-01-09 00:00:00", "C0005", "N", "4");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0030", "2019-01-09 00:00:00", "C0006", "S", "3");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0031", "2019-03-09 00:00:00", "C0004", "N", "4");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0032", "2019-03-09 00:00:00", "C0007", "N", "8");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0033", "2019-03-09 00:00:00", "C0008", "S", "7");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0034", "2019-04-09 00:00:00", "C0008", "N", "6");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0035", "2019-04-09 00:00:00", "C0004", "N", "7");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0036", "2019-05-09 00:00:00", "C0009", "S", "4");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0037", "2019-05-09 00:00:00", "C0010", "N", "11");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0038", "2019-06-09 00:00:00", "C0010", "N", "11");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0039", "2019-06-09 00:00:00", "C0015", "S", "9");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0040", "2019-06-09 00:00:00", "C0014", "N", "1");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0041", "2019-06-09 00:00:00", "C0005", "S", "3");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0042", "2019-06-09 00:00:00", "C0011", "N", "6");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0043", "2019-10-09 00:00:00", "C0014", "S", "11");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0044", "2019-10-09 00:00:00", "C0012", "N", "12");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0045", "2019-10-09 00:00:00", "C0007", "N", "4");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0046", "2019-10-09 00:00:00", "C0008", "N", "4");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0047", "2019-10-09 00:00:00", "C0009", "N", "3");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0048", "2019-10-09 00:00:00", "C0011", "N", "7");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0049", "2019-10-09 00:00:00", "C0019", "N", "8");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0050", "2019-10-09 00:00:00", "C0004", "N", "2");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0052", "2019-11-28 00:00:00", "C0002", "S", "1");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0090", "2019-11-28 00:00:00", "C0002", "S", "1");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0092", "2019-11-28 00:00:00", "C0002", "S", "1");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0093", "2019-11-28 00:00:00", "C0002", "S", "1");
INSERT INTO fac_cabe (fac_num, fac_fec, cli_cod, fac_igv, ven_cod) VALUES("F0094", "2019-11-28 00:00:00", "C0002", "S", "1");


CREATE TABLE fac_deta (
  fac_num char(12) NOT NULL DEFAULT '' ,
  art_cod char(5) NOT NULL DEFAULT '' ,
  art_can int(11) ,
  PRIMARY KEY (fac_num,art_cod)
);

INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0001", "A0007", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0001", "A0001", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0002", "A0002", "16");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0002", "A0004", "4");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0002", "A0005", "6");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0003", "A0004", "5");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0004", "A0007", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0004", "A0002", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0005", "A0006", "12");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0005", "A0010", "11");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0005", "A0011", "4");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0005", "A0014", "11");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0006", "A0007", "13");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0007", "A0020", "23");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0008", "A0020", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0009", "A0001", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0010", "A0006", "8");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0010", "A0005", "7");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0010", "A0011", "5");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0011", "A0005", "6");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0011", "A0004", "4");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0011", "A0010", "13");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0012", "A0002", "14");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0013", "A0014", "21");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0014", "A0014", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0015", "A0007", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0016", "A0014", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0016", "A0006", "5");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0017", "A0006", "7");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0017", "A0011", "5");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0018", "A0012", "4");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0018", "A0002", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0018", "A0004", "4");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0018", "A0005", "11");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0019", "A0008", "13");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0019", "A0007", "6");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0019", "A0006", "7");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0020", "A0007", "6");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0020", "A0009", "15");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0021", "A0009", "11");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0021", "A0004", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0021", "A0007", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0022", "A0001", "4");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0023", "A0003", "5");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0023", "A0006", "7");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0024", "A0007", "13");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0024", "A0003", "15");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0025", "A0008", "11");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0026", "A0010", "4");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0026", "A0011", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0027", "A0001", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0027", "A0003", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0028", "A0006", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0029", "A0008", "4");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0030", "A0009", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0031", "A0011", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0032", "A0010", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0033", "A0013", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0033", "A0014", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0034", "A0013", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0035", "A0012", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0036", "A0001", "4");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0037", "A0003", "6");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0038", "A0001", "5");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0039", "A0004", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0039", "A0007", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0040", "A0001", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0040", "A0004", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0041", "A0005", "6");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0042", "A0007", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0042", "A0011", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0043", "A0010", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0044", "A0012", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0045", "A0014", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0046", "A0012", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0047", "A0001", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0048", "A0004", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0049", "A0007", "2");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0050", "A0011", "3");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0050", "A0012", "4");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0092", "A0001", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0092", "A0002", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0092", "A0005", "6");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0092", "A0006", "9");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0093", "A0001", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0093", "A0005", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0094", "A0001", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0094", "A0005", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0094", "A0003", "1");
INSERT INTO fac_deta (fac_num, art_cod, art_can) VALUES("F0094", "A0007", "1");


CREATE TABLE vendedor (
  Ven_cod int(11) NOT NULL auto_increment,
  Ven_nom varchar(25) ,
  Ven_Fig datetime ,
  PRIMARY KEY (Ven_cod)
);


INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("1", "Diaz Vera, Ana", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("2", "Pardo Campos, carlos", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("3", "LEE Moreno,  claudia", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("4", "Mendoza OBANDO, Maria", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("5", "Narva Gomez, Mario", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("6", "Murillo Mancini, Juan", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("7", "Gonzales Vera, Erlinda", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("8", "Diaz Choque, Susy", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("9", "Huamani Rios, Liz", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("10", "Cama Peralta, Ana", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("11", "Campos Diaz, Juan", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("12", "Ramirez Cristobal, Pedro", "2013-11-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("13", "Camarena Rios, Daniel", "2012-03-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("14", "Perez Diaz, Juan", "2011-11-01 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("15", "Inga Lopez, Consuelo", "2012-12-01 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("16", "Cardenas Bacilio, Eva", "2011-10-02 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("17", "Cardenas Bacilio, Eva", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("18", "Martel Mendez, Mario", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("19", "Carrasco Lopez, Ana", "0000-00-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("20", "Porras Becerra, Eva", "2011-10-00 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("21", "Zamora Contreras, Flor", "2011-10-01 00:00:00");
INSERT INTO vendedor (Ven_cod, Ven_nom, Ven_Fig) VALUES("22", "Diaz Bacilio, Eva", "0000-00-00 00:00:00");
