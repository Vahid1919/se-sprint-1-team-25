<?php

    include("../dbconnect.php");

    $input_email = filter_input(INPUT_POST, "email", FILTER_VALIDATE_EMAIL);
    $input_password = filter_input(INPUT_POST, "password", FILTER_SANITIZE_SPECIAL_CHARS);

    echo $input_email; echo $input_password;
    
    $query = "SELECT * FROM Hospital WHERE email='". $input_email . "' AND password='" . $input_password . "'";
    
  
    echo $query;

    $stm = $db->prepare($query);

    $success = $stm->execute();

    $returned_values = $stm->fetchAll();

    if(!$success){
        print_r($stm->errorInfo()[2]);
        include("../dberror.php");
    }

    if(!empty($returned_values)){
        header("Location: hospital-login-success.html");
        die();
    }


?>