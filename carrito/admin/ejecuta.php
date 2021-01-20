<?php 
	
	
	if($_POST['Caso']=="Eliminar"){
		require ("../conexion.php");
		$consulta = "delete from productos where id=".$_POST['Id'];
		mysqli_query($conexion,$consulta);
		unlink("../productos/".$_POST['Imagen']);
		echo 'El producto se ha eliminado';
	}
	if($_POST['Caso']=="Modificar"){
		require ("../conexion.php");
		$nombre = "update productos set nombre='".$_POST['Nombre']."' where id=".$_POST['Id'];
		mysqli_query($conexion,$nombre);
		$descripcion = "update productos set descripcion='".$_POST['Descripcion']."' where id=".$_POST['Id'];
		mysqli_query($conexion,$descripcion);
		$consulta = "update productos set precio='".$_POST['Precio']."' where id=".$_POST['Id'];
		mysqli_query($conexion,$consulta);
		
		echo 'El producto se ha modificado';
	}

?>