#import "HINoDataPosition.h"


/**
* description: Options for displaying a message like "No data to display". This feature requires the file <code>no-data-to-display.js</code> to be loaded in the page. The actual text to display is set in the <a href="#lang.noData">lang.noData</a> option.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/no-data-to-display/no-data-line/" target="_blank">Line series</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/no-data-to-display/no-data-pie/" target="_blank">pie series</a>.
*/
@interface HINoData: HIChartsJSONSerializable

/**
* description: The position of the no-data label, relative to the plot area. 
*/
@property(nonatomic, readwrite) HINoDataPosition *position;
/**
* description: CSS styles for the no-data label. 
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;
/**
* description: An object of additional SVG attributes for the no-data label.
*/
@property(nonatomic, readwrite) id attr;
/**
* description: Whether to insert the label as HTML, or as pseudo-HTML rendered with SVG.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;

-(NSDictionary *)getParams;

@end
