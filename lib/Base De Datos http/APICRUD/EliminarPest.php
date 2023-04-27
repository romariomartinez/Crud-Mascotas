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
    
     $id = $_POST['id'];
     
     if($id!=''){
         $sql = "DELETE FROM registrar_mascotas WHERE id='$id'";

 if (mysqli_query($con, $sql)) {
         $clientes[] = array('mensaje'=> "Mascota Eliminada");
  } else {
       $clientes[] = array('mensaje'=> "Mascota no Eliminada");
  }
     }else{
          $clientes[] = array('mensaje'=> "Mascota no Eliminada...");
     }
     
     
 $close = mysqli_close($con) 
or die("Ha sucedido un error inexperado en la desconexion de la base de datos");
     
$json_string = json_encode($clientes);
echo $json_string;
?>