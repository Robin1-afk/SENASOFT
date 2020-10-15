<?php
require('../configuracion/crud.php');

$nit = $_POST['nit'];
$nombre =$_POST['nombre'];
$email =$_POST['email'];
$constraseña = $_POST['contraseña'];
$Tipo_user = "Empresa";

$sql = " INSERT  INTO usuarios (Nombre_Completo , Identificacion , Email , Password ) VALUE ('$nombre', '$nit','$email', '$constraseña' ) ";
$verificar = $conexion->query($sql);
if($verificar){
    header("location: ../index.php");
}else {
    echo "hubo algun error " . mysqli_connect_errno();   
}
?>
