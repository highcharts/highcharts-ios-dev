<?php
	
    function apiParse($PATH_IN, $PATH_OUT, $CLEAR) {
        $FILE_CONTENT_IN = file_get_contents($PATH_IN);
        
		$STR_SRCH[] = 'String'; 
		$STR_REPL[] = 'NSString';

		$STR_SRCH[] = 'Number'; 
		$STR_REPL[] = 'NSNumber';

		$STR_SRCH[] = 'Boolean'; 
		$STR_REPL[] = 'BOOL';

		$STR_SRCH[] = 'Boolean'; 
		$STR_REPL[] = 'BOOL';

		$STR_SRCH[] = 'Color';
		$STR_REPL[] = 'UIColor';

		$STR_SRCH[] = 'Array';
		$STR_REPL[] = 'NSArray';

		$STR_SRCH[] = 'Object';
		$STR_REPL[] = 'NSObject';

		$items = json_decode($FILE_CONTENT_IN);
		
		foreach ($items as &$item) {
			
			if ($CLEAR) {
				$item->deprecated = FALSE;
				$item->seeAlso = "";
				$item->demo = "";
				$item->since = "";
			}

			var_dump($item);
		}
		
		// file_put_contents($PATH_OUT, $FILE_CONTENT_OUT);
    }
    
    if (!$argv[1]) {
        echo 'usage: apidump [input file] [output file] -c';
        echo "\n";
        exit;
    }

    // directory to scan input
    $DIR_PATH_IN = $argv[1];
    
    // directory to output
    $DIR_PATH_OUT = $argv[2];

    // clear unused items
    $CLEAR = $argv[3] ? TRUE : FALSE;

    apiParse($DIR_PATH_IN, $DIR_PATH_OUT, $CLEAR);
    
    exit;
?>