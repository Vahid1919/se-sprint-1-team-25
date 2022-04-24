<?php 
 
include("../dbconnect.php");
$place_name = filter_input(INPUT_POST, "name");
$email = filter_input(INPUT_POST, "email");
$address = filter_input(INPUT_POST, "address");
$password = filter_input(INPUT_POST, "password");

if($place_name == null || $email == null || $address == null || $password == null){
    $err_msg = "All values not entered";
    include("../dberror.php");
}

$query = "INSERT INTO Place(id, name,address,email,password)
 VALUES (:place_id, :place_name, :address, :email, :password)";

$stm = $db->prepare($query);


$stm->bindValue(":place_id", null, PDO::PARAM_INT);
$stm->bindValue(":place_name", $place_name);
$stm->bindValue(":email", $email);
$stm->bindValue(":address", $address);
$stm->bindValue(":password", $password);


$success = $stm->execute();
$stm->closeCursor();


if(!$success){
    
    $err_msg = $stm->errorInfo()[2];
    include("../dberror.php");
} 

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success!</title>
</head>
<body>
    
        
    <h1><?php
        if($success){
            echo "You have signed up successfully!";
        }
    ?></h1>
    
</body>
</html>