#### Directory structure

```
./Scripts
├── Lib
│   ├── Dictionary.js
│   ├── js2json
│   ├── template_app.m
│   └── template_demo.m
├── README.md
├── js2literal.php
└── src
    └── js2json

```

#### Dictionary.js
`Dictionary.js` is JSON to NSDictionary parser.


#### js2json.js
`js2json.js` is JS Object parset that creates NSJSON representation.


#### Templates

`template_app.m` - template for demo app

`template_demo.m` - template for web demos options


#### js2literal
JS to Objective-c literal parser. 

Usage:

```
php js2literal.php [input dir] [output dir]

php js2literal.php /highcharts-js/samples/highcharts/demo/ /highcharts-ios/Demo/

```

#### jsrc
Source code for scripts or CLI if there are one.