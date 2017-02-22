#import "HIChartsJSONSerializable.h"


/**
* description: The actual series to append to the chart. In addition to 
	the members listed below, any member of the <code>plotOptions</code> for that specific
	type of plot can be added to a series individually. For example, even though a general
	<code>lineWidth</code> is specified in <code>plotOptions.series</code>, an individual
	<code>lineWidth</code> can be specified for each series.
*/
@interface HISeries: HIChartsJSONSerializable

/**
* description: An array of data points for the series. The points can be given in three ways:
 <ol>
 	<li>An array of numerical values. In this case, the numerical values will 
 	be interpreted as y values, and x values will be automatically calculated,
 	either starting at 0 and incrementing by 1, or from <code>pointStart</code> 
 	and <code>pointInterval</code> given in the plotOptions. If the axis is
 	has categories, these will be used. This option is not available for range series. Example:
<pre>data: [0, 5, 3, 5]</pre>
 	</li>
 	<li><p>An array of arrays with two values. In this case, the first value is the
 	x value and the second is the y value. If the first value is a string, it is
 	applied as the name of the point, and the x value is incremented following
 	the above rules.</p>
<p>For range series, the arrays will be interpreted as <code>[x, low, high]</code>. In this cases, the X value can be skipped altogether to make use of <code>pointStart</code> and <code>pointRange</code>.</p>

 Example:
<pre>data: [[5, 2], [6, 3], [8, 2]]</pre></li>


<li><p>An array of objects with named values. In this case the objects are
 	point configuration objects as seen below.</p>

<p>Range series values are given by <code>low</code> and <code>high</code>.</p>

Example:
<pre>data: [{
	name: 'Point 1',
	color: '#00FF00',
	y: 0
}, {
	name: 'Point 2',
	color: '#FF00FF',
	y: 5
}]</pre></li>
 </ol>

<p>Note that line series and derived types like spline and area, require data to be sorted by X because it interpolates mouse coordinates for the tooltip. Column and scatter series, where each point has its own mouse event, does not require sorting.</p>
* demo: <ul>
<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/reflow-true/" target="_blank">1) Numerical values</a></li>

<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-arrays/" target="_blank">2a) arrays of numeric x and y</a></li>

<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-arrays-datetime/" target="_blank">2b) arrays of datetime x and y</a></li>

<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-name-value/" target="_blank">2c) arrays of point.name and y</a></li>

<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/" target="_blank">3) config objects</a></li>

<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/3d-column-null-values/" target="_blank">4) 3D column with null values</a></li>
</ul>
*/
@property(nonatomic, readwrite) NSMutableArray /* <HIData, NSNumber, NSArray> */ *data;
/**
* description: An id for the series. This can be used after render time to get a pointer to the series object through <code>chart.get()</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-id/" target="_blank">Get series by id</a>
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: The name of the series as shown in the legend, tooltip etc.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/name/" target="_blank">Series name</a>
*/
@property(nonatomic, readwrite) NSString *name;
/**
* description: When using dual or multiple y axes, this number defines which yAxis the particular series is connected to. It refers to either the <a href="#yAxis.id">axis id</a> or the index of the axis in the yAxis array, with 0 being the first.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/yaxis/" target="_blank">Apply the column series to the secondary Y axis</a>
*/
@property(nonatomic, readwrite) NSString *yAxis;
/**
* description: The sequential index of the series in the legend.  <div class="demo">Try it:  	<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/legendindex/" target="_blank">Legend in opposite order</a> </div>.
*/
@property(nonatomic, readwrite) NSNumber *legendIndex;
/**
* description: Define the visual z index of the series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-zindex-default/" target="_blank">With no z index, the series defined last are on top</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-zindex/" target="_blank">with a z index, the series with the highest z index is on top</a>.
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: This option allows grouping series in a stacked chart. The stack option can be a string  or a number or anything else, as long as the grouped series' stack options match each other.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/stack/" target="_blank">Stacked and grouped columns</a>
*/
@property(nonatomic, readwrite) NSString *stack;
/**
* description: When using dual or multiple x axes, this number defines which xAxis the particular series is connected to. It refers to either the <a href="#xAxis.id">axis id</a> or the index of the axis in the xAxis array, with 0 being the first.
*/
@property(nonatomic, readwrite) NSString *xAxis;
/**
* description: The type of series. Can be one of <code>area</code>, <code>areaspline</code>, <code>bar</code>, <code>column</code>, <code>line</code>, <code>pie</code>, <code>scatter</code> or <code>spline</code>. From version 2.3, <code>arearange</code>, <code>areasplinerange</code> and <code>columnrange</code> are supported with the highcharts-more.js component.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/type/" target="_blank">Line and column in the same chart</a>
* accepted values: [null, "line", "spline", "column", "area", "areaspline", "pie", "arearange", "areasplinerange", "boxplot", "bubble", "columnrange", "errorbar", "funnel", "gauge", "scatter", "waterfall"]
*/
@property(nonatomic, readwrite) NSString *type;
/**
* description: This method is deprecated as of version 2.0. Instead, load the data using jQuery.ajax and use options preprocessing as described in <a href="http://docs.highcharts.com/#preprocessing">the docs</a>.
*/
@property(nonatomic, readwrite) NSString *dataURL;
/**
* description: The index of the series in the chart, affecting the internal index in the <code>chart.series</code> array, the visible Z index as well as the order in the legend.
*/
@property(nonatomic, readwrite) NSNumber *index;
/**
* description: This method is deprecated as of version 2.0. Instead, use options preprocessing as described in <a href="http://docs.highcharts.com/#preprocessing">the docs</a>.
*/
@property(nonatomic, readwrite) NSString /* Function? */ *dataParser;

-(NSDictionary *)getParams;

@end
