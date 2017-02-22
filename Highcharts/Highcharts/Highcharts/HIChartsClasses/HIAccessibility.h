#import "HIAccessibilityKeyboardNavigation.h"


/**
* description: <p>Options for configuring accessibility for the chart. Requires the <a href="//code.highcharts.com/modules/accessibility.js">accessibility module</a> to be loaded. For a description of the module and information on its features, see <a href="http://www.highcharts.com/docs/chart-concepts/accessibility">Highcharts Accessibility</a>.</p>
*/
@interface HIAccessibility: HIChartsJSONSerializable

/**
* description: <p>Date format to use for points on datetime axes when describing them to screen reader users.</p>
<p>Defaults to the same format as in tooltip.</p>
<p>For an overview of the replacement codes, see <a href="#Highcharts.dateFormat">dateFormat</a>.</p>
*/
@property(nonatomic, readwrite) NSString *pointDateFormat;
/**
* description: Options for keyboard navigation.
*/
@property(nonatomic, readwrite) HIAccessibilityKeyboardNavigation *keyboardNavigation;
/**
* description: <p>Function to run upon clicking the "View as Data Table" link in the screen reader region.</p>

<p>By default Highcharts will insert and set focus to a data table representation of the chart.</p>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *onTableAnchorClick;
/**
* description: <p>A formatter function to create the HTML contents of the hidden screen reader information region. Receives one argument, <code>chart</code>, referring to the chart object. Should return a String with the HTML content of the region.</p>
<p>The link to view the chart as a data table will be added automatically after the custom HTML content.</p>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *screenReaderSectionFormatter;
/**
* description: <p>Formatter function to determine the date/time format used with points on datetime axes when describing them to screen reader users. Receives one argument, <code>point</code>, referring to the point to describe. Should return a date format string compatible with <a href="#Highcharts.dateFormat">dateFormat</a>.</p>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *pointDateFormatter;
/**
* description: Whether or not to add series descriptions to charts with a single series.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *describeSingleSeries;
/**
* description: <p>When a series contains more points than this, we no longer expose information about individual points to screen readers.</p>
<p>Set to <code>false</code> to disable.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/stock/accessibility/accessible-stock/">Accessible stock chart</a>
*/
@property(nonatomic, readwrite) NSNumber *pointDescriptionThreshold;
/**
* description: Enable accessibility features for the chart.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: <p>Formatter function to use instead of the default for point descriptions. Receives one argument, <code>point</code>, referring to the point to describe. Should return a String with the description of the point for a screen reader user.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/accessibility/advanced-accessible/">Complex accessible chart</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *pointDescriptionFormatter;
/**
* description: <p>Formatter function to use instead of the default for series descriptions. Receives one argument, <code>series</code>, referring to the series to describe. Should return a String with the description of the series for a screen reader user.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/accessibility/advanced-accessible/">Accessible complex chart</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *seriesDescriptionFormatter;

-(NSDictionary *)getParams;

@end
