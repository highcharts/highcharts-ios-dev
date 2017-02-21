#import "HIChartsJSONSerializable.h"


/**
* description: <p>The Data module provides a simplified interface for adding data to a chart from sources like CVS, HTML tables or grid views. See also the <a href="http://www.highcharts.com/docs/working-with-data/data-module">tutorial article on the Data module</a>.</p>

<p>It requires the <code>modules/data.js</code> file to be loaded.</p>

<p>Please note that the default way of adding data in Highcharts, without the need of a module, is through the <a href="#series.data">series.data</a> option.</p>
* demo: Data from a <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/column-parsed/" target="_blank">HTML table</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/csv/" target="_blank">CSV</a>.
*/
@interface Data: HIChartsJSONSerializable

/**
* description: The same as the columns input option, but defining rows intead of columns.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/rows/" target="_blank">Data in rows</a>
*/
@property(nonatomic, readwrite) NSMutableArray<NSMutableArray *> *rows;
/**
* description: A HTML table or the id of such to be parsed as input data. Related options are <code>startRow</code>, <code>endRow</code>, <code>startColumn</code> and <code>endColumn</code> to delimit what part of the table is used.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/column-parsed/" target="_blank">Parsed table</a>
*/
@property(nonatomic, readwrite) NSString *table;
/**
* description: The key for a Google Spreadsheet to load. See <a href="https://developers.google.com/gdata/samples/spreadsheet_sample">general information on GS</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/google-spreadsheet/" target="_blank">Load a Google Spreadsheet</a>
*/
@property(nonatomic, readwrite) NSString *googleSpreadsheetKey;
/**
* description: In tabular input data, the last column (indexed by 0) to use. Defaults to the last column containing data.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/start-end/" target="_blank">Limited data</a>
*/
@property(nonatomic, readwrite) NSNumber *endColumn;
/**
* description: A callback function to parse string representations of dates into JavaScript timestamps. Should return an integer timestamp on success.
*/
@property(nonatomic, readwrite) NSString /* Function? */ *parseDate;
/**
* description: In tabular input data, the last row (indexed by 0) to use. Defaults to the last row containing data.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/start-end/" target="_blank">Limited data</a>
*/
@property(nonatomic, readwrite) NSNumber *endRow;
/**
* description: <p>A comma delimited string to be parsed. Related options are <a href="#data.startRow">startRow</a>, <a href="#data.endRow">endRow</a>, <a href="#data.startColumn">startColumn</a> and <a href="#data.endColumn">endColumn</a> to delimit what part of the table is used. The <a href="#data.lineDelimiter">lineDelimiter</a> and <a href="#data.itemDelimiter">itemDelimiter</a> options define the CSV delimiter formats.</p>

<p>The built-in CSV parser doesn't support all flavours of CSV, so in some cases it may be necessary to use an external CSV parser. See <a href="http://jsfiddle.net/highcharts/u59176h4/">this example</a> of parsing CSV through the MIT licensed <a href="http://papaparse.com/">Papa Parse</a> library.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/csv/" target="_blank">Data from CSV</a>
*/
@property(nonatomic, readwrite) NSString *csv;
/**
* description: In tabular input data, the first row (indexed by 0) to use.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/start-end/" target="_blank">Limited data</a>
*/
@property(nonatomic, readwrite) NSNumber *startRow;
/**
* description: The callback that is evaluated when the data is finished loading, optionally from an external source, and parsed. The first argument passed is a finished chart options object, containing the series. These options can be extended with additional options and passed directly to the chart constructor.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/complete/" target="_blank">Modify data on complete</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *complete;
/**
* description: <p>Which of the predefined date formats in Date.prototype.dateFormats to use to parse date values. Defaults to a best guess based on what format gives valid and ordered dates.</p>

<p>Valid options include:
<ul>
<li><code>YYYY-mm-dd</code></li>
<li><code>dd/mm/YYYY</code></li>
<li><code>mm/dd/YYYY</code></li>
<li><code>dd/mm/YY</code></li>
<li><code>mm/dd/YY</code></li>
</ul>
</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/dateformat-auto/" target="_blank">Best guess date format</a>
* accepted values: [undefined, "YYYY-mm-dd", "dd/mm/YYYY", "mm/dd/YYYY", "dd/mm/YYYY", "dd/mm/YY", "mm/dd/YY"]
*/
@property(nonatomic, readwrite) NSString *dateFormat;
/**
* description: Switch rows and columns of the input data, so that <code>this.columns</code> effectively becomes the rows of the data set, and the rows are interpreted as series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/switchrowsandcolumns/" target="_blank">Switch rows and columns</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *switchRowsAndColumns;
/**
* description: The decimal point used for parsing numbers in the CSV.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/delimiters/" target="_blank">Comma as decimal point</a>
*/
@property(nonatomic, readwrite) NSString *decimalPoint;
/**
* description: In tabular input data, the first column (indexed by 0) to use.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/start-end/" target="_blank">Limited data</a>
*/
@property(nonatomic, readwrite) NSNumber *startColumn;
/**
* description: An array containing object with Point property names along with what column id the property should be taken from.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/seriesmapping-label/" target="_blank">Label from data set</a>
*/
@property(nonatomic, readwrite) NSMutableArray *seriesMapping;
/**
* description: Item or cell delimiter for parsing CSV. Defaults to the tab character <code>\t</code> if a tab character is found in the CSV string, if not it defaults to <code>,</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/delimiters/" target="_blank">Delimiters</a>
*/
@property(nonatomic, readwrite) NSString *itemDelimiter;
/**
* description: Whether to use the first row in the data set as series names. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/start-end/" target="_blank">Don't get series names from the CSV</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *firstRowAsNames;
/**
* description: The Google Spreadsheet worksheet to use in combination with <a href="#data.googleSpreadsheetKey">googleSpreadsheetKey</a>. The available id's from your sheet can be read from <code>https://spreadsheets.google.com/feeds/worksheets/{key}/public/basic</code>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/google-spreadsheet/" target="_blank">Load a Google Spreadsheet</a>
*/
@property(nonatomic, readwrite) NSString *googleSpreadsheetWorksheet;
/**
* description: A callback function to access the parsed columns, the two-dimentional input data array directly, before they are interpreted into series data and categories. Return <code>false</code> to stop completion, or call <code>this.complete()</code> to continue async.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/parsed/" target="_blank">Modify data after parse</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *parsed;
/**
* description: A two-dimensional array representing the input data on tabular form. This input can be used when the data is already parsed, for example from a grid view component. Each cell can be a string or number. If not switchRowsAndColumns is set, the columns are interpreted as series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/columns/" target="_blank">Columns</a>
*/
@property(nonatomic, readwrite) NSMutableArray<NSMutableArray *> *columns;
/**
* description: Line delimiter for parsing CSV.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/delimiters/" target="_blank">Delimiters</a>
*/
@property(nonatomic, readwrite) NSString *lineDelimiter;

-(NSDictionary *)getParams;

@end
