<?php
	
	function remove($STACK, $HAY) {
		$remove = FALSE;
		foreach ($HAY as $item) {
			if(strpos($STACK, $item) !== FALSE){
				$remove = TRUE;
				break;
			}
		}
		return $remove;
	}

    function apiParse($PATH_IN, $PATH_OUT, $DB) {
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
		
		// $STR_SRCH[] = 'Object';
		// $STR_REPL[] = 'NSObject';

		$STR_REMOVE[] = '.events';
		$STR_REMOVE[] = '.formatter';

		$FILE_CONTENT_OUT = '';
		$newItems = [];
		
		$items = json_decode($FILE_CONTENT_IN);
		$index = 0;
		foreach ($items as &$item) {
			
			$string = $item->returnType;
			$item->returnType = str_ireplace($STR_SRCH, $STR_REPL, $string);
			
			// $item->_id = $item->name;
			// unset($item->name);
			// var_dump($item->returnType);
			
			$item->deprecated = FALSE;
			$item->seeAlso = "";
			$item->demo = "";
			$item->since = "";

			if (remove($item->fullname, $STR_REMOVE) !== TRUE) {
				if ($DB) {
					$itemString = json_encode($item)."\n";
					$FILE_CONTENT_OUT .= str_replace('"name"', '"_id"', $itemString);
				} else {
					array_push($newItems, $item);	
				}
			}

			// var_dump($item);
			$index++;
		}

		if (!$DB) {
			$FILE_CONTENT_OUT = json_encode($newItems);
		}
		
		file_put_contents($PATH_OUT, $FILE_CONTENT_OUT);
    }
	
    if (!$argv[1]) {
        echo 'usage: apidump [input file] [output file] -NO_DB';
        echo "\n";
        exit;
    }

    // directory to scan input
    $DIR_PATH_IN = $argv[1];
	
    // directory to output
    $DIR_PATH_OUT = $argv[2];

    // clear unused items
    $DB = $argv[3] ? FALSE : TRUE;

	apiParse($DIR_PATH_IN, $DIR_PATH_OUT, $DB);
	
    exit;
?>
