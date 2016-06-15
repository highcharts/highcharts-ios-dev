<?php
    
    function jsStrip($PATH_IN, $PATH_OUT) {
        
        // load file as normal string
        $FILE_CONTENT = file_get_contents($PATH_IN);
        
        echo 'js2literal: parsing '. $PATH_IN. "\n";
        
        // js begin, clear from highcharts function
        $REG[] = "/(^.*highcharts\\()/s";
        $SUB[] = '';
        
        // js end
        $REG[] = "/(\\n    \\}\\);\\n.*)/ms";
        $SUB[] = "\n}";
        
        $indexMax = count($REG);
        for ($index = 0; $index < $indexMax; $index++) {
            $FILE_CONTENT = preg_replace( $REG[$index] , $SUB[$index], $FILE_CONTENT);
        }
        
        echo 'js2literal: writing '. $PATH_OUT. "\n";
        file_put_contents($PATH_OUT, $FILE_CONTENT);
        
        if (!file_exists($PATH_OUT)) {
            echo 'js2literal: problem parsing '. $PATH_IN. "\n";
            return 1;
        }
        
        return 0;
    }
    
    function js2json($PATH_IN, $PATH_OUT) {
        
        echo 'js2literal: parsing '. $PATH_IN. "\n";
        
        // convert js to json
        shell_exec('./Lib/js2json '.$PATH_IN.' '.$PATH_OUT);
        
        if (!file_exists($PATH_OUT)) {
            echo 'js2literal: problem parsing '. $PATH_IN. "\n";
            return 1;
        }
        
        return 0;
    }
    
    function json2literal($PATH_IN, $PATH_OUT) {
        
        echo 'js2literal: parsing '. $PATH_IN. "\n";
        
        // convert js to nsdictionary literal
        shell_exec('node ./Lib/Dictionary.js < '.$PATH_IN.' >> '.$PATH_OUT);
        
        if (!file_exists($PATH_OUT)) {
            echo 'js2literal: problem parsing '. $PATH_IN. "\n";
            return 1;
        }
        
        echo 'js2literal: writing '. $PATH_OUT. "\n";
        
        return 0;
    }
    
    function clean($PATHS) {
        foreach ($PATHS as &$PATH) {
            if ( file_exists($PATH) ) {
                if ( is_dir($PATH) ) {
                    rmdir($PATH);
                } else {
                    unlink($PATH);
                }
            }
        }
    }
    
    function prepareJS($PATH_IN, $PATH_OUT, $PART, $FAIL) {
        
        $FILE_NAME_JS = 'demo.js';
        $FILE_NAME_JSON = 'demo.json';
        $FILE_NAME_M = 'demo.m';
        
        $DIR_LIST = array_diff(scandir($PATH_IN), array('.DS_Store', '..', '.'));
        
        if ( !file_exists($PATH_OUT) ) {
            echo 'js2literal: output dir dont exist! '. $PATH_OUT. "\n";
        }
        
        foreach ($DIR_LIST as &$DIR) {
            $DIR_PATH_IN = $PATH_IN.$DIR;
            $DIR_PATH_OUT = $PATH_OUT.$DIR;
            
            $FILE_PATH_JS_IN = $DIR_PATH_IN.'/'.$FILE_NAME_JS;
            
            $FILE_PATH_JS_OUT = $DIR_PATH_OUT.'/'.$FILE_NAME_JS;
            
            $FILE_PATH_JSON_OUT = $DIR_PATH_OUT.'/'.$FILE_NAME_JSON;
            
            $FILE_PATH_M_OUT = $DIR_PATH_OUT.'/'.$FILE_NAME_M;
            
            $PATHS[0] = $FILE_PATH_JSON_OUT;
            $PATHS[1] = $FILE_PATH_JS_OUT;
            $PATHS[2] = $DIR_PATH_OUT;
            
            if ( is_dir($DIR_PATH_IN) ) {
                
                echo 'js2literal: creating '. $DIR_PATH_OUT. "\n";
                mkdir($DIR_PATH_OUT);
                
                if ( jsStrip($FILE_PATH_JS_IN, $FILE_PATH_JS_OUT) === 1 ) {
                    if ($FAIL === FALSE) {
                        clean($PATHS);
                    }
                    continue;
                }
                
                if ( js2json($FILE_PATH_JS_OUT, $FILE_PATH_JSON_OUT) === 1 ) {
                    if ($FAIL === FALSE) {
                        clean($PATHS);
                    }
                    continue;
                }
                
                if ( json2literal($FILE_PATH_JSON_OUT, $FILE_PATH_M_OUT) === 1) {
                    if ($FAIL === FALSE) {
                        clean($PATHS);
                    }
                    continue;
                }
                
                unset($PATHS[2]);
                if ($PART === FALSE) {
                    clean($PATHS);
                }
            }
        }
    }
    
    if (!$argv[1]) {
        echo 'usage: js2literal [input dir] [output dir] [-p leave partial js and json files] [-f leave failed files]';
        echo "\n";
        exit;
    }
    
    // directory to scan input
    $DIR_PATH_IN = $argv[1];
    
    // directory to output
    $DIR_PATH_OUT = $argv[2];
    
    // leave intermediate files js, json
    $PART = $argv[3] ? TRUE : FALSE;
    $FAIL = $argv[4] ? TRUE : FALSE;
    
    prepareJS($DIR_PATH_IN, $DIR_PATH_OUT, $PART, $FAIL);
    
    exit;
?>