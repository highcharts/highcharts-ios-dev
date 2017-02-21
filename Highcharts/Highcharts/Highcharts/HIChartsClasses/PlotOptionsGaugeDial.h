#import "HIChartsJSONSerializable.h"
#import "HexColor.h"


/**
* description: <p>Options for the dial or arrow pointer of the gauge.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the dial is styled with the <code>.highcharts-gauge-series .highcharts-dial</code> rule.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/gauge/" target="_blank">Styled mode</a>.
*/
@interface PlotOptionsGaugeDial: HIChartsJSONSerializable

/**
* description: The width of the top of the dial, closest to the perimeter. The pivot narrows in from the base to the top.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/" target="_blank">Dial options demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber *topWidth;
/**
* description: The length of the dial's rear end, the part that extends out on the other side of the pivot. Relative to the dial's length. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/" target="_blank">Dial options demonstrated</a>
*/
@property(nonatomic, readwrite) NSString *rearLength;
/**
* description: The width of the gauge dial border in pixels.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/" target="_blank">Dial options demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: The length of the dial's base part, relative to the total radius or length of the dial. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/" target="_blank">Dial options demonstrated</a>
*/
@property(nonatomic, readwrite) NSString *baseLength;
/**
* description: The pixel width of the base of the gauge dial. The base is the part closest to the pivot, defined by baseLength. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/" target="_blank">Dial options demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber *baseWidth;
/**
* description: The background or fill color of the gauge's dial. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/" target="_blank">Dial options demonstrated</a>
*/
@property(nonatomic, readwrite) HexColor *backgroundColor;
/**
* description: The radius or length of the dial, in percentages relative to the radius of the gauge itself.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/" target="_blank">Dial options demonstrated</a>
*/
@property(nonatomic, readwrite) NSString *radius;
/**
* description: The border color or stroke of the gauge's dial. By default, the borderWidth is 0, so this must be set in addition to a custom border color.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-dial/" target="_blank">Dial options demonstrated</a>
*/
@property(nonatomic, readwrite) HexColor *borderColor;

-(NSDictionary *)getParams;

@end
