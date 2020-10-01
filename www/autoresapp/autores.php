<?php
require_once "utiles/bbdd.php";
require_once "utiles/htmlutil.php";

$autores = obtenerAutores();

echo html("<h1>Autores</h1>".tableAction($autores), "Autores");

?>