$(document).ready(function(){
    var cabecera = '<img src="../imagenes/logo.png" id="logo"><a href="../carritodecompras.php" title="ver carrito de compras"><img src="../imagenes/carrito.png"></a>';
    var menu = '<li><a href="../">Inicio</a></li><li><a href="../admin.php">Ultimas Compras</a></li><li><a href="./agregarproducto.php" >Agregar</a></li><li><a href="./modificar.php" class="selected">Modificar</a></li><li><a href="./cerrar.php">Salir</a></li>';

    $("#cabeza").html(cabecera);
  
    $("#menu").html(menu);
})