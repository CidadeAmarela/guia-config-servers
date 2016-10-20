<?php 
    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    $from = "peter@yellowtown.org";
    $to = isset($argv[1])? "dino.orchi@gmail.com": "ppkrauss@gmail.com";
    $subject = "ola mamae!";
    $message = "Este e o email da mamae.\n Nao pode cair na caixa de spam... \n Etc. e tal isso eh um email normal";
    $headers = "From:" . $from;
    mail($to,$subject,$message, $headers);
    echo "\nTest email sent to $to!\n";
?>
