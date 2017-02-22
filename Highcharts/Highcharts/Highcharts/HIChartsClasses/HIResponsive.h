#import "HIChartsJSONSerializable.h"


/**
* description: Allows setting a set of rules to apply for different screen or chart sizes. Each rule specifies additional chart options.
* demo: Responsive <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/axis/" target="_blank">axis</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/legend/" target="_blank">legend</a> and <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/classname/" target="_blank">class name</a>.
*/
@interface HIResponsive: HIChartsJSONSerializable

/**
* description: A set of rules for responsive settings. The rules are executed from the top down.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/axis/" target="_blank">Axis changes</a>
*/
@property(nonatomic, readwrite) NSMutableArray *rules;

-(NSDictionary *)getParams;

@end
