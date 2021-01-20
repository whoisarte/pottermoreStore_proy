<?php
	$servidor="localhost";
	$db="sqldatabase";
	$usuario="root";
	$contrasena="";
	$conexion=mysqli_connect($servidor,$usuario,$contrasena,$db);
	return $conexion;
?>