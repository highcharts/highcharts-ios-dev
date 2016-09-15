#### Directory structure

```
./Tools/
├── Lib
│   ├── Dictionary.js
│   ├── js2json
│   ├── jsonmini
│   └── template.m
├── README.md
├── apidump.php
├── genFitData.php
├── js2literal.php
└── src
    ├── js2json
    └── jsonmini

```
## Lib
Additional files required for woking tools

#### Dictionary.js
`Dictionary.js` is JSON to NSDictionary parser.


#### js2json
`js2json` is JS Object parset that creates NSJSON representation.


#### jsonmini
`jsonmini` is JS Object parset that creates JSON minified version.


#### template.m
`template.m` - template for web demos options


## Tools

#### README.md
This file.

#### apidump.php
`apidump.php` is JSON api parser that creates Objective-C representation.
Can use templates. egz. 'template.m'


#### genFitData.php
`genFitData.php` is JSON fit data generator for example app.


#### js2literal
JS to Objective-c literal parser. 

Usage:

```
php js2literal.php [input dir] [output dir]

php js2literal.php /highcharts-js/samples/highcharts/demo/ /highcharts-ios/Demo/

```


## src
Source code for scripts or CLI if there are one.