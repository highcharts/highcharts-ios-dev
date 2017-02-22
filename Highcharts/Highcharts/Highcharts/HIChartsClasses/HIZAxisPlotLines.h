#import "HIZAxisPlotLinesLabel.h"
#import "HIHexColor.h"


/**
* description: <p>An array of lines stretching across the plot area, marking a specific value on one of the axes.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the plot lines are styled by the <code>.highcharts-plot-line</code> class in addition to the <code>className</code> option.</p>
*/
@interface HIZAxisPlotLines: HIChartsJSONSerializable

/**
* description: A custom class name, in addition to the default <code>highcharts-plot-line</code>, to apply to each individual line.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: The position of the line in axis units.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-color/" target="_blank">Between two categories on X axis</a>
*/
@property(nonatomic, readwrite) NSNumber *value;
/**
* description: An object defining mouse events for the plot line. Supported properties are <code>click</code>, <code>mouseover</code>, <code>mouseout</code>, <code>mousemove</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-events/" target="_blank">Mouse events demonstrated</a>
*/
@property(nonatomic, readwrite) id events;
/**
* description: The width or thickness of the plot line.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-color/" target="_blank">2px wide line from X axis</a>
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: The color of the line.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-color/" target="_blank">A red line from X axis</a>
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: An id used for identifying the plot line in Axis.removePlotLine.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-id/" target="_blank">Remove plot line by id</a>
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: The z index of the plot line within the chart.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-zindex-behind/" target="_blank">Behind plot lines by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-zindex-above/" target="_blank">above plot lines</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-zindex-above-all/" target="_blank">above plot lines and series</a>.
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: The dashing or dot style for the plot line. For possible values see <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-dashstyle-all/">this overview</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-dashstyle/" target="_blank">Dash and dot pattern</a>
* accepted values: ["Solid", "ShortDash", "ShortDot", "ShortDashDot", "ShortDashDotDot", "Dot", "Dash" ,"LongDash", "DashDot", "LongDashDot", "LongDashDotDot"]
*/
@property(nonatomic, readwrite) NSString *dashStyle;
/**
* description: Text labels for the plot bands
*/
@property(nonatomic, readwrite) HIZAxisPlotLinesLabel *label;

-(NSDictionary *)getParams;

@end
