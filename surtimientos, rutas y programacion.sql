SELECT s.fechadiadeventa, s.pk_surtimiento, s.fk_ruta, d.*
FROM tb_surtimiento s
JOIN tb_surtimiento_dotaciones d 
ON s.pk_surtimiento = d.fk_surtimiento
ORDER BY s.fechadiadeventa, s.pk_surtimiento;


SELECT s.*, d.* 
FROM tb_surtimiento s
JOIN tb_surtimiento_dotaciones d 
ON s.pk_surtimiento = d.fk_surtimiento
WHERE fk_surtimiento = 2
