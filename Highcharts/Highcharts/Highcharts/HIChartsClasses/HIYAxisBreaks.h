#import "HIChartsJSONSerializable.h"


/**
* description: An array defining breaks in the axis, the sections defined will be left out and all the points shifted closer to each other. Requires that the broken-axis.js module is loaded.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/axisbreak/break-simple/" target="_blank">Simple break</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/axisbreak/break-visualized/" target="_blank">advanced with callback</a>
*/
@interface HIYAxisBreaks: HIChartsJSONSerializable

/**
* description: A number indicating how much space should be left between the start and the end of the break. The break size is given in axis units, so for instance on a <code>datetime</code> axis, a break size of 3600000 would indicate the equivalent of an hour.
*/
@property(nonatomic, readwrite) NSNumber *breakSize;
/**
* description: The point where the break ends.
*/
@property(nonatomic, readwrite) NSNumber *to;
/**
* description: The point where the break starts.
*/
@property(nonatomic, readwrite) NSNumber *from;
/**
* description: Defines an interval after which the break appears again. By default the breaks do not repeat.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/axisbreak/break-repeated/">Repeated Break</a>
*/
@property(nonatomic, readwrite) NSNumber *repeat;

-(NSDictionary *)getParams;

@end
