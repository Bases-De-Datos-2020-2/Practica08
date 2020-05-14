--intento del 4
SELECT Nombre, No_Viajes FROM MiembroAsociacion
JOIN(SELECT EXTRACT(MOUNT FROM Fecha),EXTRACT(YEAR FROM Fecha) FROM Viaja)
