<?php 

include("../dbconnect.php");

$first_name = filter_input(INPUT_POST, "first_name");
$last_name = filter_input(INPUT_POST, "last_name");

$email = filter_input(INPUT_POST, "email");
$phone_number = filter_input(INPUT_POST, "phone_number");
$address = filter_input(INPUT_POST, "address");
$password = filter_input(INPUT_POST, "password");

if($first_name == null || $last_name == null || $email == null || $phone_number == null || $address == null || $password == null){
    $err_msg = "All values not entered";
    include("../dberror.php");
}

$query = "INSERT INTO Visitor(id, first_name, last_name, address, phone_number,email,password)
 VALUES (:id, :first_name, :last_name, :address, :phone_number, :email, :password)";

$stm = $db->prepare($query);



$stm->bindValue(":id", null, PDO::PARAM_INT);
$stm->bindValue(":first_name", $first_name);
$stm->bindValue(":last_name", $last_name);
$stm->bindValue(":address", $address);
$stm->bindValue(":phone_number", $phone_number);
$stm->bindValue(":email", $email);
$stm->bindValue(":password", $password);

$success = $stm->execute();
$stm->closeCursor();


if(!$success){
    $err_msg = ($stm->errorInfo()[2]);
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
        }else{
            echo "Sign Up failed";
        }
    ?></h1>
    
</body>
</html>