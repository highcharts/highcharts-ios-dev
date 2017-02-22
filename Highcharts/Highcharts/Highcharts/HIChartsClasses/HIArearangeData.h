#import "HIArearangeDataEvents.h"
#import "HIHexColor.h"


/**
* description: An array of data points for the series. For the <code>arearange</code> series type, points can be given in the following ways:
 <ol>
 	<li><p>An array of arrays with 3 or 2 values. In this case, the values correspond to <code>x,low,high</code>. If the first value is a string, it is
 	applied as the name of the point, and the <code>x</code> value is inferred. The <code>x</code> value can also be omitted, in which case the inner arrays should be of length 2. Then the <code>x</code> value is automatically calculated, either starting at 0 and incremented by 1, or from <code>pointStart</code> 
 	and <code>pointInterval</code> given in the series options.</p>
<pre>data: [
    [0, 8, 3], 
    [1, 1, 1], 
    [2, 6, 8]
]</pre></li>


<li><p>An array of objects with named values. The objects are
 	point configuration objects as seen below. If the total number of data points exceeds the series' <a href='#series<arearange>.turboThreshold'>turboThreshold</a>, this option is not available.</p>

<pre>data: [{
    x: 1,
    low: 9,
    high: 0,
    name: "Point2",
    color: "#00FF00"
}, {
    x: 1,
    low: 3,
    high: 4,
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
@interface HIArearangeData: HIChartsJSONSerializable

/**
* description: <p><i>Requires Accessibility module</i></p>
<p>A description of the point to add to the screen reader information about the point.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/maps/accessibility/accessible-map/">Accessible map</a>
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">Styled mode</a> only. A specific color index to use for the point, so its graphic representations are given the class name <code>highcharts-color-{n}</code>.
*/
@property(nonatomic, readwrite) NSNumber *colorIndex;
/**
* description: An additional, individual class name for the data point's graphic representation.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: Individual color for the point. By default the color is pulled from the global <code>colors</code> array.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/color/" target="_blank">Mark the highest point</a>
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: <p>The name of the point as shown in the legend, tooltip, dataLabel etc.</p>

<p>If the <a href="#xAxis.type">xAxis.type</a> is set to <code>category</code>, and no <a href="#xAxis.categories">categories</a> option exists, the category will be pulled from the <code>point.name</code> of the last series defined. For multiple series, best practice however is to define <code>xAxis.categories</code>.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/" target="_blank">Point names</a>
*/
@property(nonatomic, readwrite) NSString *name;
/**
* description: The rank for this point's data label in case of collision. If two data labels are about to overlap, only the one with the highest <code>labelrank</code> will be drawn.
*/
@property(nonatomic, readwrite) NSNumber *labelrank;
/**
* description: Whether the data point is selected initially.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: Individual point events
*/
@property(nonatomic, readwrite) HIArearangeDataEvents *events;
/**
* description: The x value of the point. For datetime axes, the X value is the timestamp in milliseconds since 1970.
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: The <code>id</code> of a series in the <a href="#drilldown.series">drilldown.series</a> array to use for a drilldown for this point.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/basic/" target="_blank">Basic drilldown</a>
*/
@property(nonatomic, readwrite) NSString *drilldown;
/**
* description: An id for the point. This can be used after render time to get a pointer to the point object through <code>chart.get()</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/id/" target="_blank">Remove an id'd point</a>
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: The high or maximum value for each data point.
*/
@property(nonatomic, readwrite) NSNumber *high;
/**
* description: The low or minimum value for each data point.
*/
@property(nonatomic, readwrite) NSNumber *low;
/**
* description: Individual data label for each point. The options are the same as the ones for  <a class="internal" href="#plotOptions.series.dataLabels">plotOptions.series.dataLabels</a>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/" target="_blank">Show a label for the last value</a>
*/
@property(nonatomic, readwrite) id dataLabels;

-(NSDictionary *)getParams;

@end
