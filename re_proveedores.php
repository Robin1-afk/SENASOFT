<?php
require "../configuracion/crud.php";

$nit = $_POST['nit'];
$name_proveedor =$_POST['razon'];
$telefono = $_POST['telefono'];
$telefono2 = $_POST['telefono2'];
$email = $_POST['telefono'];
$direccion = $_POST['direccion'];

$sql = " INSERT INTO proveedor (Nit , Razon_Social , Telefono_1 , Telefono_2 , Email , Direccion ) VALUE 
('$nit' , '$name_proveedor' , '$telefono' , '$telefono2' , '$email' , '$direccion')";

$verificar = $conexion->query($sql);
if($verificar){
 
 header("location : ../proveedores.php");
    
}else {

    echo "hubo algun error " . mysqli_errno($conexion);   
}
?>

?>