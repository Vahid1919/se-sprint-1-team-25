<?php

    include("../dbconnect.php");

    $input_email = filter_input(INPUT_POST, "email", FILTER_VALIDATE_EMAIL);
    $input_password = filter_input(INPUT_POST, "password", FILTER_SANITIZE_SPECIAL_CHARS);
    
    $query = "SELECT * FROM Agent WHERE email='". $input_email . "' AND password='" . $input_password . "'";
    

    $stm = $db->prepare($query);
   
    echo $query;

    $success = $stm->execute();

    $returned_values = $stm->fetchAll();

    if(!$success){
        print_r($stm->errorInfo()[2]);
        include("../dberror.php");
    }

    if(!empty($returned_values)){
        header("Location: Agent-login-success.html");
        die();
    }


?>