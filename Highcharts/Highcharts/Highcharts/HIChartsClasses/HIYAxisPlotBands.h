#import "HIYAxisPlotBandsLabel.h"
#import "HIHexColor.h"


/**
* description: An array of objects defining plot bands on the Y axis.
*/
@interface HIYAxisPlotBands: HIChartsJSONSerializable

/**
* description: In a gauge chart, this option determines the outer radius of the plot band that stretches along the perimeter. It can be given as a percentage string, like <code>"100%"</code>, or as a pixel number, like <code>100</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-gauge" target="_blank">Gauge plot band</a>
*/
@property(nonatomic, readwrite) NSString *outerRadius;
/**
* description: In a gauge chart, this option determines the inner radius of the plot band that stretches along the perimeter. It can be given as a percentage string, like <code>"100%"</code>, or as a pixel number, like <code>100</code>. By default, the inner radius is controlled by the <a href="#yAxis.plotBands.thickness">thickness</a> option.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-gauge" target="_blank">Gauge plot band</a>
*/
@property(nonatomic, readwrite) NSString *innerRadius;
/**
* description: The start position of the plot band in axis units.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-color/" target="_blank">Datetime axis</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-from/" target="_blank">categorized axis</a>,
*/
@property(nonatomic, readwrite) NSNumber *from;
/**
* description: Border width for the plot band.  Also requires <code>borderColor</code> to be set.
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: The z index of the plot band within the chart, relative to other elements. Using the same z index as another element may give unpredictable results, as the last rendered element will be on top. Values from 0 to 20 make sense.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-color/" target="_blank">Behind plot lines by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-zindex/" target="_blank">above plot lines</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-zindex-above-series/" target="_blank">above plot lines and series</a>.
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: A custom class name, in addition to the default <code>highcharts-plot-band</code>, to apply to each individual band.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: In a gauge chart, this option sets the width of the plot band stretching along the perimeter. It can be given as a percentage string, like <code>"10%"</code>, or as a pixel number, like <code>10</code>. The default value 10 is the same as the default <a href="#yAxis.tickLength">tickLength</a>, thus making the plot band act as a background for the tick markers. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-gauge" target="_blank">Gauge plot band</a>
*/
@property(nonatomic, readwrite) NSString *thickness;
/**
* description: The color of the plot band.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-color/" target="_blank">Color band</a>
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: The end position of the plot band in axis units.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-color/" target="_blank">Datetime axis</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-from/" target="_blank">categorized axis</a>,
*/
@property(nonatomic, readwrite) NSNumber *to;
/**
* description: An id used for identifying the plot band in Axis.removePlotBand.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-id/" target="_blank">Remove plot band by id</a>
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: An object defining mouse events for the plot band. Supported properties are <code>click</code>, <code>mouseover</code>, <code>mouseout</code>, <code>mousemove</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-events/" target="_blank">Mouse events demonstrated</a>
*/
@property(nonatomic, readwrite) id events;
/**
* description: Border color for the plot band. Also requires <code>borderWidth</code> to be set.
*/
@property(nonatomic, readwrite) HIHexColor *borderColor;
/**
* description: Text labels for the plot bands
*/
@property(nonatomic, readwrite) HIYAxisPlotBandsLabel *label;

-(NSDictionary *)getParams;

@end
