#import "ColumnDataEvents.h"
#import "HexColor.h"


/**
* description: An array of data points for the series. For the <code>column</code> series type, points can be given in the following ways:
 <ol>
 	<li>An array of numerical values. In this case, the numerical values will 
 	be interpreted as <code>y</code> options. The <code>x</code> values will be automatically calculated,
 	either starting at 0 and incremented by 1, or from <code>pointStart</code> 
 	and <code>pointInterval</code> given in the series options. If the axis
 	has categories, these will be used.  Example:
<pre>data: [0, 5, 3, 5]</pre>
 	</li>
 	<li><p>An array of arrays with 2 values. In this case, the values correspond to <code>x,y</code>. If the first value is a string, it is
 	applied as the name of the point, and the <code>x</code> value is inferred. <pre>data: [
    [0, 6], 
    [1, 2], 
    [2, 6]
]</pre></li>


<li><p>An array of objects with named values. The objects are
 	point configuration objects as seen below. If the total number of data points exceeds the series' <a href='#series<column>.turboThreshold'>turboThreshold</a>, this option is not available.</p>

<pre>data: [{
    x: 1,
    y: 5,
    name: "Point2",
    color: "#00FF00"
}, {
    x: 1,
    y: 9,
    name: "Point1",
    color: "#FF00FF"
}]</pre></li>
 </ol>
* demo: <p>The demos use a line series, but the principle is the same for all types.</p>
<ul>
<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/reflow-true/" target="_blank">Numerical values</a></li>
<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-arrays/" target="_blank">Arrays of numeric x and y</a></li>
<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-arrays-datetime/" target="_blank">Arrays of datetime x and y</a></li>
<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-name-value/" target="_blank">Arrays of point.name and y</a></li>
<li><a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/" target="_blank"> Config objects</a></li>
</ul>
*/
@interface ColumnData: HIChartsJSONSerializable

/**
* description: Whether the data point is selected initially.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: <p>The name of the point as shown in the legend, tooltip, dataLabel etc.</p>

<p>If the <a href="#xAxis.type">xAxis.type</a> is set to <code>category</code>, and no <a href="#xAxis.categories">categories</a> option exists, the category will be pulled from the <code>point.name</code> of the last series defined. For multiple series, best practice however is to define <code>xAxis.categories</code>.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/" target="_blank">Point names</a>
*/
@property(nonatomic, readwrite) NSString *name;
/**
* description: The x value of the point. For datetime axes, the X value is the timestamp in milliseconds since 1970.
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: The y value of the point.
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">Styled mode</a> only. A specific color index to use for the point, so its graphic representations are given the class name <code>highcharts-color-{n}</code>.
*/
@property(nonatomic, readwrite) NSNumber *colorIndex;
/**
* description: Individual color for the point. By default the color is pulled from the global <code>colors</code> array.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/color/" target="_blank">Mark the highest point</a>
*/
@property(nonatomic, readwrite) HexColor *color;
/**
* description: An id for the point. This can be used after render time to get a pointer to the point object through <code>chart.get()</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/id/" target="_blank">Remove an id'd point</a>
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: The <code>id</code> of a series in the <a href="#drilldown.series">drilldown.series</a> array to use for a drilldown for this point.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/basic/" target="_blank">Basic drilldown</a>
*/
@property(nonatomic, readwrite) NSString *drilldown;
/**
* description: Individual point events
*/
@property(nonatomic, readwrite) ColumnDataEvents *events;
/**
* description: <p><i>Requires Accessibility module</i></p>
<p>A description of the point to add to the screen reader information about the point.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/maps/accessibility/accessible-map/">Accessible map</a>
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: The rank for this point's data label in case of collision. If two data labels are about to overlap, only the one with the highest <code>labelrank</code> will be drawn.
*/
@property(nonatomic, readwrite) NSNumber *labelrank;
/**
* description: An additional, individual class name for the data point's graphic representation.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: Individual data label for each point. The options are the same as the ones for  <a class="internal" href="#plotOptions.series.dataLabels">plotOptions.series.dataLabels</a>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/" target="_blank">Show a label for the last value</a>
*/
@property(nonatomic, readwrite) id dataLabels;

-(NSDictionary *)getParams;

@end
