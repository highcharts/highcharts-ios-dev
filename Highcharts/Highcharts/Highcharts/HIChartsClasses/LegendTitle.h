#import "HIChartsJSONSerializable.h"


/**
* description: A title to be added on top of the legend.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/title/" target="_blank">Legend title</a>
*/
@interface LegendTitle: HIChartsJSONSerializable

/**
* description: A text or HTML string for the title. 
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Generic CSS styles for the legend title.
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;

-(NSDictionary *)getParams;

@end
