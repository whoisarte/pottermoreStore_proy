<?php
session_start();

	if(isset($_SESSION['Usuario'])){

	}else{
		header("Location: ./index.php?Error=Acceso denegado");
	}
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Panel de Administración</title>
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"  href="./js/scripts.js"></script>
	<script type="text/javascript" src="./Datos.js"></script>
</head>
<body>
	<header id="cabeza">
	<img src="./imagenes/logo.png" id="logo">
		<a href="./carritodecompras.php" title="ver carrito de compras">
			<img src="./imagenes/carrito.png">
	</header>
	<section>
	<nav class="menu2">
	  <menu id="menu">
	  <li><a href="./">Inicio</a></li>
	  <li><a href="./admin.php">Ultimas Compras</a></li>
	<li><a href="./admin/agregarproducto.php" >Agregar</a></li>
	<li><a href="./admin/modificar.php" class="selected">Modificar</a></li>
	<li><a href="./admin/cerrar.php">Salir</a></li>
	  </menu>
	</nav>

	<center><h1>Últimas Compras</h1></center>
	<table border="0px" width="100%" id="tablaadmin">	
		<tr>
			<th>Imagen</th>
			<th>Nombre</th>
			<th>Precio</th>
			<th>Cantidad</th>
			<th>Subtotal</th>
		</tr>	

		<?php
		require("conexion.php");

		$consulta = "select * from compras";
		$resultado = mysqli_query($conexion,$consulta);
			
			$numeroventa=0;
			while ($f=mysqli_fetch_row($resultado)) {
					if($numeroventa	!=$f[1]){
						echo '<tr><td>Compra Número: '.$f[1].' </td></tr>';
					}
					$numeroventa=$f[1];
					echo '<tr>
						<td><img src="./productos/'.$f[2].'" width="100px" heigth="100px" /></td>
						<td>'.$f[3].'</td>
						<td>'.$f[4].'</td>
						<td>'.$f[5].'</td>
						<td>'.$f[6].'</td>

					</tr>';
			}
		?>
	</table>
	</section>
</body>
</html>