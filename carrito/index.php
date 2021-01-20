<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Carrito de Compras</title>
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"  href="./js/scripts.js"></script>
</head>
<body>
	<header>
		<img src="./imagenes/logo.png" id="logo">
		<a href="./carritodecompras.php" title="ver carrito de compras">
			<img src="./imagenes/carrito.png">
		</a>
	</header>
	<section>
		
	<?php
		require("conexion.php");
		$consulta = "SELECT * FROM productos;";
		$resultado = mysqli_query($conexion,$consulta);
		if(mysqli_num_rows($resultado)>0){
			while ($row=mysqli_fetch_row($resultado)) {
			
		echo "<div class='producto'>";
		echo	"<center>";
		echo	"<img src='./productos/".$row[3]."'><br>";
		echo	"<span>".$row[1]."</span><br>";
		echo	"<a href='./detalles.php?id=".$row[0]."'>ver</a>";
		echo"</center>";
		echo"</div>";
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

            <h3>2020 Instituto Tecnológico de la Laguna S.A. de C.V.</h3>
        </div>    
    </footer>

</html>