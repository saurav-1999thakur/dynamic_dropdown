<?php
$serverName = "localhost";
$userName = "root";
$password = "";
$database = "location";
$connect = mysqli_connect($serverName,$userName,$password,$database);
if(!$connect){
    die("connect Server".mysql_error());
}
?>