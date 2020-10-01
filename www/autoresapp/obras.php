<?php
require_once "utiles/bbdd.php";
require_once "utiles/htmlutil.php";
    $id = $_GET['id'];
    $msn = "Busca en la base de datos las obras relacionados con id ==". $id;
    $nombre = obtenerAutores()[$id]['Name'];
    echo html("<h1>Obras de $nombre</h1>".$msn, "Obras");
    
 ?>