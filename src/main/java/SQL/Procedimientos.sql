
#####################
USE ventas3;
SELECT * FROM FAC_CABE;
#####################
USE VENTAS3;
CREATE PROCEDURE SPMES(AN INT)
SELECT MONTH(FAC_FEC) MES, COUNT(*) CANTIDAD, SUM(ART_PRE*ART_CAN) TOTAL
FROM FAC_CABE F, FAC_DETA D, ARTICULOS A
WHERE F.fac_num=D.fac_num AND D.art_cod=A.art_cod AND YEAR(FAC_FEC)=AN
GROUP BY MONTH(FAC_FEC);
#####################
USE VENTAS3;
CREATE PROCEDURE SPYEAR(AN INT)
SELECT DISTINCT a.art_cod CODIGO,a.art_nom NOMBRE,fd.art_can CANTIDAD
FROM fac_deta fd
JOIN fac_cabe fc ON fc.fac_num = fd.fac_num
JOIN articulos a ON a.art_cod = fd.art_cod
WHERE YEAR(fc.fac_fec)=AN
ORDER BY fd.art_can DESC
LIMIT 10

