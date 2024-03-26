-- 1 nos trae todos los registros 1 a 1 que si tienen relacion con la tabla surtimientos para comprobarlo ejecutar la query 2 cambiando el valor de fk_surtimiento =
SELECT s.fechadiadeventa, s.pk_surtimiento, s.fk_ruta, d.*
FROM tb_surtimiento s
JOIN tb_surtimiento_dotaciones d 
ON s.pk_surtimiento = d.fk_surtimiento
ORDER BY s.fechadiadeventa, s.pk_surtimiento;

-- 2 cambiar el valor solamente no trae 0 porque no existe en tabla suirtimientos y 1 porque no tiene asignados registros
SELECT s.*, d.* 
FROM tb_surtimiento s
JOIN tb_surtimiento_dotaciones d 
ON s.pk_surtimiento = d.fk_surtimiento
WHERE fk_surtimiento = 2