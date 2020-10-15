<?php

$conexion= new mysqli('localhost' , 'root' , '123' , 'senasoft') ;
if ($conexion->connect_errno){

    echo "error". $conexion->connect_errno;
}else {
    //echo "<script> alert('Exito ')</script>";
}

?>