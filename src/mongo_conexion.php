<?php
//mongo
$m = new MongoDB\Driver\Manager("mongodb://localhost:27017");
echo " Conexion a mongo exitosa  <br>";
//creacion y seleccion db
$db = $m->mydb;
echo ' base de datos "mybd" selected ';
?>
