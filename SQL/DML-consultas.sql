/*
5.-
Obtener el nombre completo, número de licencia, correo electrónico, el
modelo y año del vehículo que maneja, de los choferes que manejan mas
de un coche. Los datos deben estar ordenados por nombre del chofer.
*/


select M.Nombre, M.IDVehiculo, M.Email, E.Modelo E.Ano
from MiembroAsociacion as M, E
where not unique(select* 
				 from MiembroAsociacion, EnOperacion as E
				 where  MiembroAsociacion.IDVehiculo = E.IDVehiculoOperacion and
	  					M.EsChofer = 'True');

