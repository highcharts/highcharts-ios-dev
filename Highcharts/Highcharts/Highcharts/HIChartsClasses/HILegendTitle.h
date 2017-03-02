#import "HIChartsJSONSerializable.h"


/**
* description: A title to be added on top of the legend.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/title/ : Legend title
*/
@interface HILegendTitle: HIChartsJSONSerializable

/**
* description: A text or HTML string for the title. 
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Generic CSS styles for the legend title.
*/
@property(nonatomic, readwrite) NSDictionary /* <NSString, NSString> */ *style;

-(NSDictionary *)getParams;

@end
