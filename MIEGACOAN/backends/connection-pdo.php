<?php

include_once "config.php"; //untuk menyertakan config.php

try {
    $pdoconn = new PDO("mysql:host=$host; dbname=$database", $user, $pwd, array( PDO::ATTR_PERSISTENT => true )); 
    //Koneksi PDO untuk SQL Server Database
    $pdoconn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //untuk menampilkan error dengan exceptions.
}
catch(PDOException $e)
{
    throw new Exception();
    
}


?>


