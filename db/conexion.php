<?php 
    include 'datos-conexion.php';
     // realizamos la conexión
     $conexion = mysqli_connect(SERVIDOR,USUARIO,PASSWORD,DB);
     // cargar caracteres utf-8 en php
     mysqli_set_charset($conexion, "utf8");
     // verificamos la conexión


?>