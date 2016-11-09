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
`apidump.php` is JSON api parser that format Highchart api object from documentation for import to db.

Data is imported to MongoDB with mongoimport by using the highcharts.json file in the highcharts-ios repo, but first you need to format it correctly:

1. Rename all "name" properties to "_id" (but keep the values)
2. Place each option object on its own line, without a comma in the end:
Line 1: {"_id":"accessibility"...}
Line 2: {"_id":"accessibility--descr...}
etc.


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