<?php
    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );

    $opt = ['d'=>'', 't'=>'', 'h'=>true, 's'=>''];
    $opt = array_merge( $opt, getopt("d:t:h") );

    if (!$opt['h'])
	die("\nAJUDA, options disponiveis:\n\t -t toName (dft ppkrauss)\n\t-d fromDomainName (dft yellow)\n\t-s extra subject\n");
    $from = 'test@'.( $opt['d']? $opt['d'] : 'yellowtown.org' );
    $to   = $opt['t']? $opt['t']: 'ppkrauss@gmail.com';

    $subject = "ola mamae! ".$opt['s'];
    $message = "Este e o email da mamae.\n Nao pode cair na caixa de spam... \n Etc. e tal isso eh um email normal";
    $headers = "From:" . $from;
    mail($to,$subject,$message, $headers);
    echo "\nTest email from $from sent to $to!\n";
?>
