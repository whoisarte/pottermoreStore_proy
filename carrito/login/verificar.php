<?php
session_start();
require("../conexion.php");

	$consulta = "select * from usuarios where Usuario='".$_POST['Usuario']."' AND Password='".$_POST['Password']."'";
	$resultado = mysqli_query($conexion,$consulta);

	while ($f=mysqli_fetch_row($resultado)) {
		$arreglo[]=array('Nombre'=>$f[1],
			'Apellido'=>$f[2],'Imagen'=>$f[5]);
	}
	if(isset($arreglo)){
		$_SESSION['Usuario']=$arreglo;
		header("Location: ../admin.php");
	}else{
		header("Location: ../login.php?error=datos no validos");
	}
?>