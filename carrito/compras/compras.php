<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Carrito de Compras</title>
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
	<script type="text/javascript"  href="./js/scripts.js"></script>
</head>
<body>
	<header>
		<img src="../imagenes/logo.png" id="logo">
		<a href="./carritodecompras.php" title="ver carrito de compras">
			<img src="../imagenes/carrito.png">
		</a>
		
	</header>
	<div id = "compratabla">
<?php
session_start();
$arreglo=$_SESSION['carrito'];
		
//Imprimimos una tabla recorriendo el arreglo.
$total=0;
$tabla='<table border="1" id="tablaCompra"><tr>
<th>Nombre</th>
<th>Cantidad</th>
<th>Precio</th>
<th>Subtotal</th></tr>';
for($i=0;$i<count($arreglo);$i++){
	
	$tabla=$tabla.'<tr>
	<td>'.$arreglo[$i]['Nombre'].'</td>
	<td>'.$arreglo[$i]['Cantidad'].'</td>
	<td>'.$arreglo[$i]['Precio'].'</td>
	<td>'.$arreglo[$i]['Cantidad'] * $arreglo[$i]['Precio'].'</td>
	</tr>';
	$total=$total+($arreglo[$i]['Cantidad'] * $arreglo[$i]['Precio']);			
}

$tabla.'</table>';
//CONFIGURAMOS LOS DATOS DEL ENVIO
echo $tabla;
for($i=0; $i<count($arreglo);$i++){
	echo '<div id="descarga">';
		echo '<a href="./PDF/'.$arreglo[$i]['Id'].'.pdf">DESCARGAR   '.$arreglo[$i]['Id'].'.pdf </a>';
	echo '</div>';
}
		
		$numeroventa=0;
	
		require("../conexion.php");
						$consulta = "select * from compras order by numeroventa DESC limit 1";
						$re = mysqli_query($conexion,$consulta);
	
		while (	$f=mysqli_fetch_row($re)) {
					$numeroventa=$f[0];	
		}
		if($numeroventa==0){
			$numeroventa=1;
		}else{
			$numeroventa=$numeroventa+1;
		}
		for($i=0; $i<count($arreglo);$i++){
			$instruccion = "insert into compras (numeroventa, imagen,nombre,precio,cantidad,subtotal) values(
				".$numeroventa.",
				'".$arreglo[$i]['Imagen']."',
				'".$arreglo[$i]['Nombre']."',	
				'".$arreglo[$i]['Precio']."',
				'".$arreglo[$i]['Cantidad']."',
				'".($arreglo[$i]['Precio']*$arreglo[$i]['Cantidad'])."'
				)";
			mysqli_query($conexion,$instruccion);

		}
		

?>
</div>
</body>
</html>