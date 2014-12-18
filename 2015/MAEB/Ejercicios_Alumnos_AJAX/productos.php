<?php
$indice = $_POST["producto"];
$producto[]="CPU, 580";
$producto[]="Raton, 3";
$producto[]="Teclado, 10";
$producto[]="Flexo, 35";
$producto[]="Telefono, 20";
$producto[]="Altavoces, 45";
$producto[]="Portatil, 1200";
$producto[]="Monitor, 50";
$producto[]="Router, 35";
$producto[]="eBook, 240";
$producto[]="Lector tarjetas, 25";
header("Cache-Control: no-store , no-cache, must-revalidate");
header("Content-type: text/plain");
if( $indice>=0 && $indice<count( $producto )) {
    echo $producto[$indice];
} else {
    echo "No existe el producto con código $indice";
}
?>