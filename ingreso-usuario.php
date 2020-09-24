<?php 
// recogemos datos del formulario y lo insertamos en la base de datos
// var_dump($_POST);
$nombre_usuario = $_POST['nombre_usuario'];
$email_usuario = $_POST['email_usuario'];
include 'db/conexion.php';
// sql para insertar usuario
$insertar_usuario = "INSERT INTO usuarios VALUES (NULL,'$nombre_usuario','$email_usuario')";
// ejecuto inserción usuario
mysqli_query($conexion,$insertar_usuario);
// optengo id usuario
$id_usuario = mysqli_insert_id($conexion);
// sql para insertar pedidos
$insertar_pedido="INSERT INTO pedidos VALUES(NULL, '$id_usuario',NULL,'no')";
// ejecuto insertar pedido
mysqli_query($conexion,$insertar_pedido);
// optengo el id del pedido
$id_pedido = mysqli_insert_id($conexion);
// saco por pantalla como prueba
echo "Hola $nombre_usuario, tienes un $id_usuario y tu número de pedido es $id_pedido";
?>