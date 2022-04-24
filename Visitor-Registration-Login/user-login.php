<?php

    include("../dbconnect.php");

    $input_email = filter_input(INPUT_POST, "email", FILTER_VALIDATE_EMAIL);
    $input_password = filter_input(INPUT_POST, "password");

   
    
    $query = "SELECT * FROM Visitor WHERE email='". $input_email . "' AND password='" . $input_password . "'";
    
  

    $stm = $db->prepare($query);


    $success = $stm->execute();

    $returned_values = $stm->fetchAll();

    if(!$success){
        print_r($stm->errorInfo()[2]);
        include("../dberror.php");
    }

    if(!empty($returned_values)){
        header("Location: login-success.html");
        die();
    }


?>