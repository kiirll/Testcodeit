<?php
$host ="localhost";
$user ="root";
$password="";
$database="mdb";
mb_internal_encoding("UTF-8");
$link = mysqli_connect($host, $user, $password, $database);
if(!$link){
    echo mysqli_connect_error();
    exit();
}
mysqli_query($link,"SET NAMES 'utf8'");
global $link;