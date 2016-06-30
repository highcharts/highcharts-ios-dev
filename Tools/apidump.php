<?php
	
    function apiParse($PATH_IN, $PATH_OUT) {
        $FILE_CONTENT_IN = file_get_contents($PATH_IN);
        
        $FILE_CONTENT_OUT = $FILE_CONTENT_IN;
		// Parse api here
        
        file_put_contents($PATH_OUT, $FILE_CONTENT_OUT);
    }
    
    if (!$argv[1]) {
        echo 'usage: api2doc [input file] [output file]';
        echo "\n";
        exit;
    }
    
    // directory to scan input
    $DIR_PATH_IN = $argv[1];
    
    // directory to output
    $DIR_PATH_OUT = $argv[2];
    
    apiParse($DIR_PATH_IN, $DIR_PATH_OUT);
    
    exit;
?>