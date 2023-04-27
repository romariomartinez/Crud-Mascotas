<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: HEAD, GET, POST, PUT, PATCH, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method,Access-Control-Request-Headers, Authorization");
header('Content-Type: application/json');
$method = $_SERVER['REQUEST_METHOD'];
if ($method == "OPTIONS") {
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method,Access-Control-Request-Headers, Authorization");
header("HTTP/1.1 200 OK");
die();
}



    require "config.php";

 //$user = $_POST['user'];
// $pass = $_POST['pass'];
//    $idestudiante="1";

if($user!=''){
    //generamos la consulta
$sql = "SELECT id,foto,nombre,raza,iduser FROM registrar_mascotas";
mysqli_set_charset($con, "utf8"); //formato de datos utf8

if(!$result = mysqli_query($con, $sql)) die();

$clientes = array(); //creamos un array

while($row = $result->fetch_assoc()) 
{ 
 
    array_push($clientes,$row);

}
    
//desconectamos la base de datos
$close = mysqli_close($con) 
or die("Ha sucedido un error inexperado en la desconexion de la base de datos");
  

//Creamos el JSON

$json_string = json_encode($clientes);
echo $json_string;
}
   
?>