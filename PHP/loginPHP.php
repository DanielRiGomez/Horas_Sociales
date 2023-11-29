<?php 

header('Access-Control-Allow-Origin: *');

	$nombre = $_POST['nombre'];
	$pass = $_POST['pass'];

$bd_host = "localhost";
$bd_name = "horas_sociales";
$bd_user = "root";
$bd_password = "root";

	$conection = mysqli_connect($bd_host, $bd_user, $bd_password, $bd_name);
	
	$conection->set_charset("utf8");

	$consulta ="SELECT contrasena FROM usuarios WHERE usuario = \"$nombre\" ;";

	$resultados = mysqli_query($conection, $consulta);

	$fila = mysqli_fetch_row($resultados);
	
	mysqli_close($conection);
	
	if(empty($fila)){
		echo json_encode(false);
	}else {
		echo json_encode(true);

		// if(password_verify($pass, $fila[0])){
		// 	echo json_encode(true);
		// }else {
		// 	echo json_encode(false);
		// }
	}


	
?>