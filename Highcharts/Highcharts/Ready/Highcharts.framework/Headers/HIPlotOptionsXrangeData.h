/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsXrangeDataPartialFill.h"


@interface HIPlotOptionsXrangeData: HIChartsJSONSerializable

/**
* description: The ending X value of the range point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/x-range : X-range
*/
@property(nonatomic, readwrite) NSNumber *x2;
/**
* description: A partial fill for each point, typically used to visualize how much of
a task is performed. The partial fill object can be set either on series
or point level.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/x-range : X-range with partial fill
*/
@property(nonatomic, readwrite) HIPlotOptionsXrangeDataPartialFill *partialFill;

-(NSDictionary *)getParams;

@end
