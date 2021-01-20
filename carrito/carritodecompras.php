<?php
	session_start();
	
	
	if(isset($_SESSION['carrito'])){
		if(isset($_GET['id'])){
					$arreglo=$_SESSION['carrito'];
					$encontro=false;
					$numero=0;
					for($i=0;$i<count($arreglo);$i++){
						if($arreglo[$i]['Id']==$_GET['id']){
							$encontro=true;
							$numero=$i;
						}
					}
					if($encontro==true){
						$arreglo[$numero]['Cantidad']=$arreglo[$numero]['Cantidad']+1;
						$_SESSION['carrito']=$arreglo;
					}else{
						$nombre="";
						$precio=0;
						$imagen="";
						
						require("conexion.php");
						$consulta = "select * from productos where id=".$_GET['id'];
						$resultado = mysqli_query($conexion,$consulta);
						while ($f=mysqli_fetch_row($resultado)) {
							$nombre=$f[1];
							$precio=$f[4];
							$imagen=$f[3];
						}
						$datosNuevos=array('Id'=>$_GET['id'],
										'Nombre'=>$nombre,
										'Precio'=>$precio,
										'Imagen'=>$imagen,
										'Cantidad'=>1);

						array_push($arreglo, $datosNuevos);
						$_SESSION['carrito']=$arreglo;

					}
		}
	}else{
		if(isset($_GET['id'])){
			$nombre="";
						$precio=0;
						$imagen="";
						require("conexion.php");
						$consulta = "select * from productos where id=".$_GET['id'];
						$resultado = mysqli_query($conexion,$consulta);
						while ($f=mysqli_fetch_row($resultado)) {
							$nombre=$f[1];
							$precio=$f[4];
							$imagen=$f[3];
						}
						$arreglo[]=array('Id'=>$_GET['id'],
							'Nombre'=>$nombre,
							'Precio'=>$precio,
							'Imagen'=>$imagen,
							'Cantidad'=>1);
			$_SESSION['carrito']=$arreglo;
		}
	}
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Carrito de Compras</title>
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"  src="./js/scripts.js"></script>
	<script src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD" data-sdk-integration-source="button-factory"></script>
	
	  <script>
	    function initPayPalButton() {
	      paypal.Buttons({
	        style: {
	          shape: 'rect',
	          color: 'gold',
	          layout: 'vertical',
	          label: 'paypal',
	          
	        },
	
	        createOrder: function(data, actions) {
	          return actions.order.create({
	            purchase_units: [{"description":"libro","amount":{"currency_code":"USD","value":1}}]
	          });
	        },
	
	        onApprove: function(data, actions) {
	          return actions.order.capture().then(function(details) {
				alert('Transaction completed by ' + details.payer.name.given_name + '!');
				window.location.href = './compras/compras.php';
				
	          });
	        },
	
	        onError: function(err) {
	          console.log(err);
	        }
	      }).render('#paypal-button-container');
	    }
	    initPayPalButton();
	  </script>

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
			$total=0;
			if(isset($_SESSION['carrito'])){
			$datos=$_SESSION['carrito'];
			
			$total=0;
			for($i=0;$i<count($datos);$i++){
				
				echo '<div class="producto">';
					echo'<center>';
				echo'<img src="./productos/'.$datos[$i]['Imagen'].'"><br>';
				echo'<span >'.$datos[$i]['Precio'].'</span><br>';
				echo'<span>Precio:'.$datos[$i]['Precio'].'</span><br>';
				echo'<span>Cantidad:';
				echo'<input type="text" value="'.$datos[$i]['Cantidad'].'"';
					echo'data-precio="'.$datos[$i]['Precio'].'"';
					echo'data-id="'.$datos[$i]['Id'].'"';
					echo'class="cantidad">';
					echo'</span><br>';
				echo'<span class="subtotal">Subtotal:'.$datos[$i]['Cantidad']*$datos[$i]['Precio'].'</span><br>';
				echo'<a href="#" class="eliminar" data-id="'.$datos[$i]['Id'].'">Eliminar</a>';
				
				echo'</center>';
				echo '</div>';
			$total=($datos[$i]['Cantidad']*$datos[$i]['Precio'])+$total;
			}
				
			}else{
				echo '<center><h2>No has añadido ningun producto</h2></center>';
			}
			echo '<center><h2 id="total">Total: '.$total.'</h2></center>';
			if($total!=0){
				echo '<div id="smart-button-container">';
	      echo '<div style="text-align: center;">';
	       echo ' <div id="paypal-button-container"></div>';
	      echo '</div>';
	    echo '</div>';

			}
		?>
		<center><a href="./">Ver catalogo</a></center>
		
		
		

		
	</section>
</body>
</html>