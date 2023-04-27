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

         
         $id=$_POST['id'];
         $foto=$_POST['foto'];
         $nombre=$_POST['nombre'];
         $ape=$_POST['raza'];
         $pro=$_POST['iduser'];
         
    if($id!=''){
       $sql = "UPDATE registrar_mascotas SET foto='$foto', nombre='$nombre', raza='$raza', iduser='$iduser' WHERE id='$id'";

    if (mysqli_query($con, $sql)) {
         $clientes[] = array('mensaje'=> "Mascota Actualizada");
  } else {
       $clientes[] = array('mensaje'=> "Mascota Actualizada");
  } 
        
    }else{
          $clientes[] = array('mensaje'=> "Mascota no Actualizada...");
     }
     
     
$json_string = json_encode($clientes);
echo $json_string;
?>