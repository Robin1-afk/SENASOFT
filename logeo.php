<?php

session_start();
require("crud.php");

$usuario = $_POST['usuario'];
$clave =$_POST['clave'];


//la variable  $conexion viene de crud.php que lo traigo con el require("crud.php");
$sql=mysqli_query($conexion,"SELECT * FROM usuarios WHERE Email='$usuario' AND Password='$clave' ");
if($row=mysqli_fetch_assoc($sql)){
    if($usuario==$row['Email'] && $clave==$row['Password']){
        $_SESSION['ID_Usuario']=$row['ID_Usuario'];
        $_SESSION['Nombre_Completo']=$row['Nombre_Completo'];
        $_SESSION['Identificacion']=$row['Identificacion'];	
        $_SESSION['Email']=$row['Email'];	
    
            echo "<script> alert('Bienvenido') </script>";
            echo "<script>location.href='../empresa.php'</script>";
        }

    }
    

else {
    echo "<script> alert('Contraseña/Usuario incorrecto') </script>";
    echo "<script>location.href='../index.php'</script>";
}
?>
