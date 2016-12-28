<?php
	
    function fileParseAndCopy($FILE_IN, $REPLACE) {
    	$FILE_CONTENT = file_get_contents($FILE_IN);

		$STR_SRCH[] = 'self.chartView';
		$STR_REPL[] = 'chartView';

    	if ($REPLACE != '') {
			
			$STR_SRCH[] = 'self.view.bounds];'; 
			$STR_REPL[] = 'self.view.bounds];'."\n\n".'    chartView.theme = @"'.$REPLACE.'";';

    	}

		$FILE_CONTENT = str_ireplace($STR_SRCH, $STR_REPL, $FILE_CONTENT);

		$FILE_OUT_NAME = ($REPLACE != '') ? '-'.$REPLACE.'.m' : '.m';

		$FILE_OUT = str_replace('.m', $FILE_OUT_NAME, $FILE_IN);
    	file_put_contents($FILE_OUT, $FILE_CONTENT);
	}
	
	$FILE_IN = $argv[1];

	fileParseAndCopy($FILE_IN, '');
	fileParseAndCopy($FILE_IN, 'dark-unica');
	fileParseAndCopy($FILE_IN, 'sand-signika');
	fileParseAndCopy($FILE_IN, 'grid-light');
	
	exit;
?>
