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

    
     if( isset($_POST['nombre']) and isset($_POST['user']) and isset($_POST['password'])  ) {
         
         $nombre=$_POST['nombre'];
         $user=$_POST['user'];
         $password=$_POST['password'];
         
       $sql = "INSERT INTO AgregarUser (id,nombre,email,pass) VALUES (default,'$nombre', '$user', '$password')";
    

    if (mysqli_query($con, $sql)) {
         $clientes[] = array('mensaje'=> "Usuario Almacenado");
  } else {
       $clientes[] = array('mensaje'=> "Usuario no Almacenado");
  }
     }else{
          $clientes[] = array('mensaje'=> "Usuario no Almacenado");
     }
     

    
   
$json_string = json_encode($clientes);
echo $json_string;
?>