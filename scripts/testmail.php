<?php
    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );

    $opt = ['d'=>'', 'f'=>'', 'h'=>true];
    $opt = array_merge( $opt, getopt("d:f:h") );

    if (!$opt['h'])
	die("\nAJUDA, options disponiveis:\n -f fromName (dft ppkrauss) -d domainName (dft yellow)\n");
    $from = 'test@'.( $opt['d']? $opt['d'] : 'yellowtown.org' );
    $to   = $opt['f']? $opt['f']: 'ppkrauss@gmail.com';

    $subject = "ola mamae!";
    $message = "Este e o email da mamae.\n Nao pode cair na caixa de spam... \n Etc. e tal isso eh um email normal";
    $headers = "From:" . $from;
    mail($to,$subject,$message, $headers);
    echo "\nTest email from $from sent to $to!\n";
?>
