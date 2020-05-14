-- Ejercicio 1.1 para miembros dados de baja
SELECT Nombre, No_asociacion,Email, Model, ano FROM MiembroAsociacion 
JOIN (SELECT * FROM DadoDeBaja JOIN Vehiculo ON (DadoDeBaja.Modelo == Vehiculo.modelo AND DadoDeBaja.ano == Vehiculo.ano)) ON (MiembroAsociacion.IDVehiculo = DadoDeBaja.IDVehiculoBaja)
WHERE MiembroAsociacion.EsDueno == TRUE MiembroAsociacion.EsChofer == TRUE; 

-- Ejercicio 1.2 para miembros en operacion
SELECT Nombre, No_asociacion,Email, Model, ano FROM MiembroAsociacion 
JOIN ( SELECT * FROM EnOperacion JOIN Vehiculo ON (EnOperacion.Modelo == Vehiculo.modelo AND EnOperacion.ano == Vehiculo.ano)) ON (MiembroAsociacion.IDVehiculo = EnOperacion.IDVehiculoBaja)
WHERE MiembroAsociacion.EsDueno == TRUE AND MiembroAsociacion.EsChofer == TRUE; 

-- Ejercicio 2.1 
SELECT COUNT(*) AS total FROM  MiembroAsociacion
WHERE MiembroAsociacion.EsDueño == TRUE;

-- Ejercicio 2.2 
SELECT COUNT(*) AS total  FROM  MiembroAsociacion
WHERE MiembroAsociacion.EsChofer == TRUE AND MiembroAsociacion.EsDueno == TRUE ;

-- Ejercicio 2.3
SELECT COUNT(*) AS total FROM  MiembroAsociacion
WHERE MiembroAsociacion.EsChofer == TRUE;

-- Ejercicio 2.4
SELECT COUNT(*) AS total FROM Estudiante;

-- Ejercicio 2.5 
SELECT COUNT(*) AS total FROM Profesor;