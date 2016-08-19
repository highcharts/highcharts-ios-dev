<?php
    
    function genFitData($PATH_OUT, $RANGE_FROM, $RANGE_TO) {
		$data = '';

		$date = 1451606400;

        for ($index = 0; $index < 365; $index++) {
			$data['all'][$index]['sample'] = rand($RANGE_FROM, $RANGE_TO);
			$date = $date - (60*60*24);
			$data['all'][$index]['date'] = $date;
        }

		for ($index = 0; $index < 12; $index++) {
			$data['year'][] = rand($RANGE_FROM, $RANGE_TO)*30;
        }

		for ($index = 0; $index < 30; $index++) {
			$data['month'][] = rand($RANGE_FROM, $RANGE_TO);
        }

		for ($index = 0; $index < 7; $index++) {
			$data['week'][] = rand($RANGE_FROM, $RANGE_TO);
        }

		for ($index = 0; $index < 12; $index++) {
			$data['day'][] = rand($RANGE_FROM/100, $RANGE_TO/100);
        }
        
        $FILE_CONTENT = json_encode($data);

        file_put_contents($PATH_OUT, $FILE_CONTENT);
		
        if (!file_exists($PATH_OUT)) {
            echo 'genfitdata: problem generating data '. $PATH_OUT. "\n";
            return 1;
        }
		
        return 0;
    }
    
    if (!$argv[1]) {
        echo 'usage: genfitdata [output file]';
        echo "\n";
        exit;
    }

    // directory to output
    $PATH_OUT = $argv[1];
	$RANGE_FROM = $argv[2];
	$RANGE_TO = $argv[3];
    genFitData($PATH_OUT, $RANGE_FROM, $RANGE_TO);
    
    exit;
?>