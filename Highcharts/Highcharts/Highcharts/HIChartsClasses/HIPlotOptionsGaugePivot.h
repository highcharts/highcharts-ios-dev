#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: <p>Options for the pivot or the center point of the gauge.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the pivot is styled with the <code>.highcharts-gauge-series .highcharts-pivot</code> rule.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/gauge/" target="_blank">Styled mode</a>.



*/
@interface HIPlotOptionsGaugePivot: HIChartsJSONSerializable

/**
* description: The background color or fill of the pivot.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-pivot/" target="_blank">Pivot options demonstrated</a>
*/
@property(nonatomic, readwrite) HIHexColor *backgroundColor;
/**
* description: The pixel radius of the pivot.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-pivot/" target="_blank">Pivot options demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber *radius;
/**
* description: The border or stroke color of the pivot. In able to change this, the borderWidth must also be set to something other than the default 0.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-pivot/" target="_blank">Pivot options demonstrated</a>
*/
@property(nonatomic, readwrite) HIHexColor *borderColor;
/**
* description: The border or stroke width of the pivot.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-pivot/" target="_blank">Pivot options demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;

-(NSDictionary *)getParams;

@end
