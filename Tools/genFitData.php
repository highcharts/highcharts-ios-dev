<?php
    
    function genFitData($PATH_OUT) {
		$data = '';

		$date = 1451606400;

        for ($index = 0; $index < 365; $index++) {
			$data['all'][$index]['sample'] = rand(5000, 10000);
			$date = $date - (60*60*24);
			$data['all'][$index]['date'] = $date;
        }

		for ($index = 0; $index < 12; $index++) {
			$data['year'][] = rand(5000, 10000)*30;
        }

		for ($index = 0; $index < 30; $index++) {
			$data['month'][] = rand(5000, 10000);
        }

		for ($index = 0; $index < 7; $index++) {
			$data['week'][] = rand(5000, 10000);
        }

		for ($index = 0; $index < 12; $index++) {
			$data['day'][] = rand(50, 1000);
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
	
    genFitData($PATH_OUT);
    
    exit;
?>