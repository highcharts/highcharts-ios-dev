#import "HIPlotOptionsColumn.h"
#import "HIPlotOptionsPolygon.h"
#import "HIPlotOptionsGauge.h"
#import "HIPlotOptionsColumnrange.h"
#import "HIPlotOptionsScatter.h"
#import "HIPlotOptionsPyramid.h"
#import "HIPlotOptionsSolidgauge.h"
#import "HIPlotOptionsArearange.h"
#import "HIPlotOptionsArea.h"
#import "HIPlotOptionsTreemap.h"
#import "HIPlotOptionsBubble.h"
#import "HIPlotOptionsErrorbar.h"
#import "HIPlotOptionsHeatmap.h"
#import "HIPlotOptionsBoxplot.h"
#import "HIPlotOptionsPie.h"
#import "HIPlotOptionsFunnel.h"
#import "HIPlotOptionsSpline.h"
#import "HIPlotOptionsBar.h"
#import "HIPlotOptionsAreasplinerange.h"
#import "HIPlotOptionsAreaspline.h"
#import "HIPlotOptionsWaterfall.h"
#import "HIPlotOptionsLine.h"
#import "HIPlotOptionsSeries.h"


/**
* description: <p>The plotOptions is a wrapper object for config objects for each series type.
		The config objects for each series can also be overridden for each series 
		item as given in the series array.</p>
		<p>Configuration options for the series are given in three levels. Options
		for all series in a chart are given in the <a class="internal" href="#plotOptions.series">plotOptions.series</a> object. Then options for all series
		of a specific type are given in the plotOptions of that type, for example plotOptions.line.
		Next, options for one single series are given in <a class="internal" href="#series">the 
		series array</a>.</p>
*/
@interface HIPlotOptions: HIChartsJSONSerializable

@property(nonatomic, readwrite) HIPlotOptionsColumn *column;
/**
* description: A polygon series can be used to draw any freeform shape in the cartesian coordinate system. A fill is applied with the <code>color</code> option, and stroke is applied through <code>lineWidth</code> and <code>lineColor</code> options. Requires the <code>highcharts-more.js</code> file.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/polygon/" target="_blank">Polygon</a>
*/
@property(nonatomic, readwrite) HIPlotOptionsPolygon *polygon;
/**
* description: General plotting options for the gauge series type. Requires <code>highcharts-more.js</code>
*/
@property(nonatomic, readwrite) HIPlotOptionsGauge *gauge;
/**
* description: The column range is a cartesian series type with higher and lower Y values along an X axis. Requires <code>highcharts-more.js</code>. To display horizontal bars, set <a href="#chart.inverted">chart.inverted</a> to <code>true</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/columnrange/" target="_blank">Inverted column range</a>
*/
@property(nonatomic, readwrite) HIPlotOptionsColumnrange *columnrange;
@property(nonatomic, readwrite) HIPlotOptionsScatter *scatter;
/**
* description: A pyramid chart consists of a single pyramid with item heights corresponding to each point value. Technically it is the same as a reversed funnel chart without a neck.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/pyramid/" target="_blank">Pyramid chart</a>
*/
@property(nonatomic, readwrite) HIPlotOptionsPyramid *pyramid;
/**
* description: A gauge showing values using a filled arc with colors indicating the value. The solid gauge plots values against the <code>yAxis</code>, which is extended with some color options, <a href="#yAxis.minColor">minColor</a>, <a href="#yAxis.maxColor">maxColor</a> and <a href="#yAxis.stops">stops</a>, to control the color of the gauge itself.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/gauge-solid/" target="_blank">Solid gauge</a>
*/
@property(nonatomic, readwrite) HIPlotOptionsSolidgauge *solidgauge;
/**
* description: The area range is a cartesian series type with higher and lower Y values along an X axis. Requires <code>highcharts-more.js</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/arearange/">Arearange example</a>
*/
@property(nonatomic, readwrite) HIPlotOptionsArearange *arearange;
@property(nonatomic, readwrite) HIPlotOptionsArea *area;
/**
* description: The size of the point shape is determined by its value relative to its siblings values.
Requires the module <code>heatmap.js</code> as well, if functionality such as the <a href="http://api.highcharts.com/highmaps#colorAxis">colorAxis</a> is to be used.
*/
@property(nonatomic, readwrite) HIPlotOptionsTreemap *treemap;
/**
* description: A bubble series is a three dimensional series type where each point renders an X, Y and Z value. Each points is drawn as a bubble where the position along the X and Y axes mark the X and Y values, and the size of the bubble relates to the Z value.
*/
@property(nonatomic, readwrite) HIPlotOptionsBubble *bubble;
/**
* description: Error bars are a graphical representation of the variability of data and are used on graphs to indicate the error, or uncertainty in a reported measurement. 
*/
@property(nonatomic, readwrite) HIPlotOptionsErrorbar *errorbar;
/**
* description: <p>The heatmap series type. This series type is available both in Highcharts and Highmaps.</p>

<p>The colors of each heat map point is usually determined by its value and controlled by settings on the <a href="#colorAxis">colorAxis</a>.</p>
*/
@property(nonatomic, readwrite) HIPlotOptionsHeatmap *heatmap;
/**
* description: A box plot is a convenient way of depicting groups of data through their five-number summaries: the smallest observation (sample minimum), lower quartile (Q1), median (Q2), upper quartile (Q3), and largest observation (sample maximum). 
*/
@property(nonatomic, readwrite) HIPlotOptionsBoxplot *boxplot;
/**
* description: A pie chart is a circular chart divided into sectors, illustrating numerical proportion.
* demo:  <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-basic/" target="_blank">Pie chart</a>,  

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/3d-pie/" target="_blank">3D pie</a>
*/
@property(nonatomic, readwrite) HIPlotOptionsPie *pie;
/**
* description: Funnel charts are a type of chart often used to visualize stages in a sales project, where the top are the initial stages with the most clients. It requires that the <code>modules/funnel.js</code> file is loaded.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/funnel/" target="_blank">Funnel demo</a>
*/
@property(nonatomic, readwrite) HIPlotOptionsFunnel *funnel;
@property(nonatomic, readwrite) HIPlotOptionsSpline *spline;
@property(nonatomic, readwrite) HIPlotOptionsBar *bar;
/**
* description: The area spline range is a cartesian series type with higher and lower Y values along an X axis. Requires <code>highcharts-more.js</code>.
*/
@property(nonatomic, readwrite) HIPlotOptionsAreasplinerange *areasplinerange;
@property(nonatomic, readwrite) HIPlotOptionsAreaspline *areaspline;
/**
* description: Options for the waterfall series type.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/waterfall/" target="_blank">Waterfall chart</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/waterfall/" target="_blank">Waterfall in styled mode</a>.
*/
@property(nonatomic, readwrite) HIPlotOptionsWaterfall *waterfall;
@property(nonatomic, readwrite) HIPlotOptionsLine *line;
/**
* description: <p>General options for all series types.</p>
*/
@property(nonatomic, readwrite) HIPlotOptionsSeries *series;

-(NSDictionary *)getParams;

@end
