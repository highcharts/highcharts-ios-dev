#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: Options for the dial or arrow pointer of the gauge.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the dial is styled with the .highcharts-gauge-series .highcharts-dial rule.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/gauge/ : Styled mode.
*/
@interface HIPlotOptionsGaugeDial: HIChartsJSONSerializable

/**
* description: The width of the top of the dial, closest to the perimeter. The pivot narrows in from the base to the top.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/ : Dial options demonstrated
*/
@property(nonatomic, readwrite) NSNumber *topWidth;
/**
* description: The length of the dial's rear end, the part that extends out on the other side of the pivot. Relative to the dial's length. 
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/ : Dial options demonstrated
*/
@property(nonatomic, readwrite) NSString *rearLength;
/**
* description: The width of the gauge dial border in pixels.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/ : Dial options demonstrated
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: The length of the dial's base part, relative to the total radius or length of the dial. 
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/ : Dial options demonstrated
*/
@property(nonatomic, readwrite) NSString *baseLength;
/**
* description: The pixel width of the base of the gauge dial. The base is the part closest to the pivot, defined by baseLength. 
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/ : Dial options demonstrated
*/
@property(nonatomic, readwrite) NSNumber *baseWidth;
/**
* description: The background or fill color of the gauge's dial. 
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/ : Dial options demonstrated
*/
@property(nonatomic, readwrite) HIHexColor *backgroundColor;
/**
* description: The radius or length of the dial, in percentages relative to the radius of the gauge itself.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/ : Dial options demonstrated
*/
@property(nonatomic, readwrite) NSString *radius;
/**
* description: The border color or stroke of the gauge's dial. By default, the borderWidth is 0, so this must be set in addition to a custom border color.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/ : Dial options demonstrated
*/
@property(nonatomic, readwrite) HIHexColor *borderColor;

-(NSDictionary *)getParams;

@end