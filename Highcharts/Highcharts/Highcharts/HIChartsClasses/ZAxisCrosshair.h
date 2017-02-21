#import "HIChartsJSONSerializable.h"
#import "HexColor.h"


/**
* description: <p>Configure a crosshair that follows either the mouse pointer or the hovered point.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the crosshairs are styled in the <code>.highcharts-crosshair</code>, <code>.highcharts-crosshair-thin</code> or <code>.highcharts-xaxis-category</code> classes.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-both/" target="_blank">Crosshair on both axes</a>
*/
@interface ZAxisCrosshair: HIChartsJSONSerializable

/**
* description: The pixel width of the crosshair. Defaults to 1 for numeric or datetime axes, and for one category width for category axes.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-customized/" target="_blank">Customized crosshairs</a>.
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: The Z index of the crosshair. Higher Z indices allow drawing the crosshair on top of the series or behind the grid lines.
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: The dash style for the crosshair. See <a href="#plotOptions.series.dashStyle">series.dashStyle</a> for possible values.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-dotted/" target="_blank">Dotted crosshair</a>
* accepted values: ["Solid", "ShortDash", "ShortDot", "ShortDashDot", "ShortDashDotDot", "Dot", "Dash" ,"LongDash", "DashDot", "LongDashDot", "LongDashDotDot"]
*/
@property(nonatomic, readwrite) NSString *dashStyle;
/**
* description: The color of the crosshair. Defaults to <code>#cccccc</code> for numeric and datetime axes, and <code>rgba(204,214,235,0.25)</code> for category axes, where the crosshair by default highlights the whole category.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-customized/" target="_blank">Customized crosshairs</a>.
*/
@property(nonatomic, readwrite) HexColor *color;
/**
* description: A class name for the crosshair, especially as a hook for styling.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: Whether the crosshair should snap to the point or follow the pointer independent of points.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-snap-false/" target="_blank">True by default</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *snap;

-(NSDictionary *)getParams;

@end
