#import "ZAxisPlotBandsLabel.h"
#import "HexColor.h"


/**
* description: <p>An array of colored bands stretching across the plot area marking an interval on the axis.</p>

<p>In a gauge, a plot band on the Y axis (value axis) will stretch along the perimeter of the gauge.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the plot bands are styled by the <code>.highcharts-plot-band</code> class in addition to the <code>className</code> option.</p>
*/
@interface ZAxisPlotBands: HIChartsJSONSerializable

/**
* description: The color of the plot band.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-color/" target="_blank">Color band</a>
*/
@property(nonatomic, readwrite) HexColor *color;
/**
* description: An object defining mouse events for the plot band. Supported properties are <code>click</code>, <code>mouseover</code>, <code>mouseout</code>, <code>mousemove</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-events/" target="_blank">Mouse events demonstrated</a>
*/
@property(nonatomic, readwrite) id events;
/**
* description: The end position of the plot band in axis units.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-color/" target="_blank">Datetime axis</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-from/" target="_blank">categorized axis</a>,
*/
@property(nonatomic, readwrite) NSNumber *to;
/**
* description: Text labels for the plot bands
*/
@property(nonatomic, readwrite) ZAxisPlotBandsLabel *label;
/**
* description: Border width for the plot band.  Also requires <code>borderColor</code> to be set.
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: A custom class name, in addition to the default <code>highcharts-plot-band</code>, to apply to each individual band.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: An id used for identifying the plot band in Axis.removePlotBand.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-id/" target="_blank">Remove plot band by id</a>
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: The start position of the plot band in axis units.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-color/" target="_blank">Datetime axis</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-from/" target="_blank">categorized axis</a>,
*/
@property(nonatomic, readwrite) NSNumber *from;
/**
* description: Border color for the plot band. Also requires <code>borderWidth</code> to be set.
*/
@property(nonatomic, readwrite) HexColor *borderColor;
/**
* description: The z index of the plot band within the chart, relative to other elements. Using the same z index as another element may give unpredictable results, as the last rendered element will be on top. Values from 0 to 20 make sense.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-color/" target="_blank">Behind plot lines by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-zindex/" target="_blank">above plot lines</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-zindex-above-series/" target="_blank">above plot lines and series</a>.
*/
@property(nonatomic, readwrite) NSNumber *zIndex;

-(NSDictionary *)getParams;

@end
