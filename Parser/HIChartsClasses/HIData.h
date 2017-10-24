/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIMarker.h"
#import "HIEvents.h"
#import "HIColor.h"
#import "HIFunction.h"


/**
* description: The Data module provides a simplified interface for adding data to
a chart from sources like CVS, HTML tables or grid views. See also
the http://www.highcharts.com/docs/working-
with-data/data-module : tutorial article on the Data module.
It requires the modules/data.js file to be loaded.
Please note that the default way of adding data in Highcharts, without
the need of a module, is through the series.data
option.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/column-parsed/ : HTML table
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/csv/ : CSV
*/
@interface HIData: HIChartsJSONSerializable

/**
* description: The wind speed in meters per second.
*/
@property(nonatomic, readwrite) NSNumber *value;
/**
* description: The name of the point as shown in the legend, tooltip, dataLabel
etc.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/ : Point names
*/
@property(nonatomic, readwrite) NSString *name;
/**
* description: The rank for this point's data label in case of collision. If two
data labels are about to overlap, only the one with the highest labelrank
will be drawn.
*/
@property(nonatomic, readwrite) NSNumber *labelrank;
/**
* description: Styled mode only. A specific color index to use for the point, so its
graphic representations are given the class name highcharts-color-
{n}.
*/
@property(nonatomic, readwrite) NSNumber *colorIndex;
/**
* description: The wind direction in degrees, where 0 is north (pointing towards south).
*/
@property(nonatomic, readwrite) NSNumber *direction;
/**
* description: An additional, individual class name for the data point's graphic
representation.
*/
@property(nonatomic, readwrite) NSString *className;
@property(nonatomic, readwrite) HIMarker *marker;
/**
* description: An id for the point. This can be used after render time to get a
pointer to the point object through chart.get().

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/id/ : Remove an id'd point
* default: null
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: The y value of the point.
* default: null
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x value of the point. For datetime axes, the X value is the timestamp
in milliseconds since 1970.
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: A description of the point to add to the screen reader information
about the point. Requires the Accessibility module.
* default: undefined
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: The id of a series in the drilldown.series
array to use for a drilldown for this point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/drilldown/basic/ : Basic drilldown
*/
@property(nonatomic, readwrite) NSString *drilldown;
/**
* description: Individual color for the point. By default the color is pulled from
the global colors array.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/color/ : Mark the highest point
* default: undefined
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: Individual data label for each point. The options are the same as
the ones for plotOptions.series.dataLabels

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/ : Show a label for the last value
*/
@property(nonatomic, readwrite) id dataLabels;
/**
* description: Whether the data point is selected initially.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: Individual point events
*/
@property(nonatomic, readwrite) HIEvents *events;
/**
* description: The size value for each bubble. The bubbles' diameters are computed
based on the z, and controlled by series options like minSize,
 maxSize, sizeBy, zMin and zMax.
*/
@property(nonatomic, readwrite) NSNumber *z;
/**
* description: An array containing object with Point property names along with what
column id the property should be taken from.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/seriesmapping-label/ : Label from data set
*/
@property(nonatomic, readwrite) NSArray *seriesMapping;
/**
* description: In tabular input data, the last row (indexed by 0) to use. Defaults
to the last row containing data.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/start-end/ : Limited data
*/
@property(nonatomic, readwrite) NSNumber *endRow;
/**
* description: A comma delimited string to be parsed. Related options are startRow, endRow, startColumn
and endColumn to delimit what part of the table
is used. The lineDelimiter and itemDelimiter options define the CSV delimiter formats.
The built-in CSV parser doesn't support all flavours of CSV, so in
some cases it may be necessary to use an external CSV parser. See
http://jsfiddle.net/highcharts/u59176h4/ : this example of parsing
CSV through the MIT licensed http://papaparse.com/ : Papa Parse
library.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/csv/ : Data from CSV
*/
@property(nonatomic, readwrite) NSString *csv;
/**
* description: In tabular input data, the first row (indexed by 0) to use.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/start-end/ : Limited data
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *startRow;
/**
* description: Whether to use the first row in the data set as series names.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/start-end/ : Don't get series names from the CSV
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *firstRowAsNames;
/**
* description: The same as the columns input option, but defining rows intead of
columns.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/rows/ : Data in rows
*/
@property(nonatomic, readwrite) NSArray<NSArray *> *rows;
/**
* description: In tabular input data, the last column (indexed by 0) to use. Defaults
to the last column containing data.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/start-end/ : Limited data
*/
@property(nonatomic, readwrite) NSNumber *endColumn;
/**
* description: A two-dimensional array representing the input data on tabular form.
This input can be used when the data is already parsed, for example
from a grid view component. Each cell can be a string or number.
If not switchRowsAndColumns is set, the columns are interpreted as
series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/columns/ : Columns
*/
@property(nonatomic, readwrite) NSArray<NSArray *> *columns;
/**
* description: The decimal point used for parsing numbers in the CSV.
If both this and data.delimiter is set to false, the parser will
attempt to deduce the decimal point automatically.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/delimiters/ : Comma as decimal point
* default: .
*/
@property(nonatomic, readwrite) NSString *decimalPoint;
/**
* description: A callback function to access the parsed columns, the two-dimentional
input data array directly, before they are interpreted into series
data and categories. Return false to stop completion, or call this.
complete() to continue async.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/parsed/ : Modify data after parse
*/
@property(nonatomic, readwrite) HIFunction *parsed;
/**
* description: The Google Spreadsheet worksheet to use in combination with googleSpreadsheetKey. The available id's from your sheet can be
read from https://spreadsheets.google.com/feeds/worksheets/{key}/public/basic

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/google-spreadsheet/ : Load a Google Spreadsheet
*/
@property(nonatomic, readwrite) NSString *googleSpreadsheetWorksheet;
/**
* description: A HTML table or the id of such to be parsed as input data. Related
options are startRow, endRow, startColumn and endColumn to
delimit what part of the table is used.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/column-parsed/ : Parsed table
*/
@property(nonatomic, readwrite) id table;
/**
* description: Line delimiter for parsing CSV.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/delimiters/ : Delimiters
* default: \n
*/
@property(nonatomic, readwrite) NSString *lineDelimiter;
/**
* description: Which of the predefined date formats in Date.prototype.dateFormats
to use to parse date values. Defaults to a best guess based on what
format gives valid and ordered dates.
Valid options include:

YYYY-mm-dd
dd/mm/YYYY
mm/dd/YYYY
dd/mm/YY
mm/dd/YY


* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/dateformat-auto/ : Best guess date format
* accepted values: [undefined, "YYYY-mm-dd", "dd/mm/YYYY", "mm/dd/YYYY", "dd/mm/YYYY", "dd/mm/YY", "mm/dd/YY"]
*/
@property(nonatomic, readwrite) NSString *dateFormat;
/**
* description: The key for a Google Spreadsheet to load. See https://developers.google.com/gdata/samples/spreadsheet_sample : general information
on GS.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/google-spreadsheet/ : Load a Google Spreadsheet
*/
@property(nonatomic, readwrite) NSString *googleSpreadsheetKey;
/**
* description: The callback that is evaluated when the data is finished loading,
optionally from an external source, and parsed. The first argument
passed is a finished chart options object, containing the series.
These options can be extended with additional options and passed
directly to the chart constructor.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/complete/ : Modify data on complete
*/
@property(nonatomic, readwrite) HIFunction *complete;
/**
* description: A callback function to parse string representations of dates into
JavaScript timestamps. Should return an integer timestamp on success.
*/
@property(nonatomic, readwrite) HIFunction *parseDate;
/**
* description: Switch rows and columns of the input data, so that this.columns
effectively becomes the rows of the data set, and the rows are interpreted
as series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/switchrowsandcolumns/ : Switch rows and columns
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *switchRowsAndColumns;
/**
* description: Item or cell delimiter for parsing CSV. Defaults to the tab character
\t if a tab character is found in the CSV string, if not it defaults
to ,.
If this is set to false or undefined, the parser will attempt to deduce
the delimiter automatically.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/delimiters/ : Delimiters
*/
@property(nonatomic, readwrite) NSString *itemDelimiter;
/**
* description: In tabular input data, the first column (indexed by 0) to use.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/data/start-end/ : Limited data
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *startColumn;

-(NSDictionary *)getParams;

@end
