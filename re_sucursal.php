<?php
session_start();
require('../configuracion/crud.php');

$usuario = $_SESSION['ID_Usuario'];
$direccion = $_POST['direccion'];
$nombre =$_POST['nombre'];
$email =$_POST['email'];
$telefono = $_POST['Telefono'];



$sql = "INSERT INTO sucursal ( Nombre , Direccion ,Telefono , Email , ID_Usuario ) VALUE ( '$nombre','$direccion','$telefono', '$email', '$usuario' )";
$verificar = $conexion->query($sql);
if($verificar){
 echo "HOLA MUNDPO";
   
}else {
    echo "hubo algun error " . mysqli_errno($conexion);   
}
?>
