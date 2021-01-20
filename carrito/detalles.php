<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Carrito de Compras</title>
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<script type="text/javascript"  href="./js/scripts.js"></script>
</head>
<body>
	<header>
		<<a href="./index.php" id="logo">
			<img src="./imagenes/logo.png" >
		</a>
		<a href="./carritodecompras.php" title="ver carrito de compras">
			<img src="./imagenes/carrito.png">
		</a>
		
	</header>
	<section>
		
	<?php
	require("conexion.php");

	$consulta = "select * from productos where id=".$_GET['id'];
	$resultado = mysqli_query($conexion,$consulta);
	if(mysqli_num_rows($resultado)>0){
	while ($f=mysqli_fetch_row($resultado)) {
	
			
			echo "<center id ='detalles'>";
				echo "<img src='./productos/".$f[3]."'><br>";
				echo"<span>".$f[1]."</span><br>";
				echo"<span>Precio:".$f[4]."</span><br>";
				echo '<div id = "AñadirCarrito">';
				echo '<a href="./carritodecompras.php?id='.$f[0].'">Añadir al carrito de compras</a>';
				echo '</div>';

			echo "</center>";
		
		}
	}
	?>
		
		

		
	</section>
</body>
<footer class="footer">
        <div class="footer-links">
            <div class="footer-container">
                <ul>
                    <li>
                        <h3>Telefono</h3>                       
                    </li>
                    <li>
                        <p>+52 8711567811</p>
                    </li>                    
                </ul>
                <ul>
                    <li>                       
                        <h3>Correos</h3>                    
                    </li>
                    <li>
						<p>pottermore.support@email.com.mx</p>
                    </li>                    
				</ul>
				<ul>
					<li>
				        <h3> Autores </h3>
					</li>
					<li>
						<h4>Alejandro Torres Molina</h4>
						<h4>Artemio Pánuco González</h4>
					</li>
				</ul>
                
            </div>

            <h3>&copy;2020 Instituto Tecnológico de la Laguna S.A. de C.V.</h3>
        </div>    
    </footer>
</html>