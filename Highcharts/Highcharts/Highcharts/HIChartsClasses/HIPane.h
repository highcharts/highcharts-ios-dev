#import "HIChartsJSONSerializable.h"


/**
* description: Applies only to polar charts and angular gauges. This configuration object holds general options for the combined X and Y axes set. Each xAxis or yAxis can reference the pane by index.
*/
@interface HIPane: HIChartsJSONSerializable

/**
* description: The size of the pane, either as a number defining pixels, or a percentage defining a percentage of the plot are.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/gauge-vu-meter/" target="_blank">Smaller size</a>
*/
@property(nonatomic, readwrite) NSString *size;
/**
* description: An object, or array of objects, for backgrounds.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/gauge-speedometer/" target="_blank">Multiple backgrounds on a gauge</a>.
*/
@property(nonatomic, readwrite) NSMutableArray *background;
/**
* description: The end angle of the polar X axis or gauge value axis, given in degrees where 0 is north. Defaults to <a href="#pane.startAngle">startAngle</a> + 360.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/gauge-vu-meter/" target="_blank">VU-meter with custom start and end angle</a>.
*/
@property(nonatomic, readwrite) NSNumber *endAngle;
/**
* description: The center of a polar chart or angular gauge, given as an array of [x, y] positions. Positions can be given as integers that transform to pixels, or as percentages of the plot area size.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/gauge-vu-meter/" target="_blank">Two gauges with different center</a>
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *center;
/**
* description: The start angle of the polar X axis or gauge axis, given in degrees where 0 is north. Defaults to 0.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/gauge-vu-meter/" target="_blank">VU-meter with custom start and end angle</a>.
*/
@property(nonatomic, readwrite) NSNumber *startAngle;

-(NSDictionary *)getParams;

@end
