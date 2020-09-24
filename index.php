<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión Pedido</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>  
    <h1>Gestión Pedidos</h1>
    <?php
        include 'db/conexion.php';
        $consulta = 'SELECT * FROM productos';
        echo '<ul>';
        $datos = mysqli_query($conexion,$consulta);
        while ($fila = mysqli_fetch_array($datos)){
            echo '<li>'.$fila['nombre_producto'].$fila['precio_producto'].'</li>';
            
        }
        echo '</ul>';

    ?>
    <form method='post'action="ingreso-usuario.php">
    <label for="nombre">Nombre</label>
        <input required type="text" name ="nombre_usuario" id="nombre">
    <label for="email">Email</label>
        <input required type="email" name ="email_usuario" id="email">
    <button type="submit">Realizar Pedido</button>
    </form>
</body>
</html>