<?php

    DEFINE("DB_USER", "SE-Admin");
    DEFINE("DB_PASSWORD", "softwareengineering69");


    $dsn = 'mysql:host=localhost;dbname=SE-team-25';

    try{
        $db = new PDO($dsn, DB_USER, DB_PASSWORD);
    }catch (PDOException $e){
        $err_msg = $e->getMessage();
        include('dberror.php');
        exit();
    }




    // $dbhost="localhost";
    // $dbuser="group20";
    // $dbpass="J4XEy7Gr";
    // $db="group20";
    
    // $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);

?>