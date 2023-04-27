<?php

session_start();
$host = "localhost"; /* equipo */
$user = "id20634145_romariocrud2"; /* usuario */
$password = "Melissa1996*"; /* clave */
$dbname = "id20634145_romariocrud"; /* base de datos */

$con = mysqli_connect($host, $user, $password,$dbname);

if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
//echo "Conexion Exitosa";

?>

