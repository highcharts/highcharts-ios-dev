#import "BoxplotDataEvents.h"
#import "HexColor.h"


/**
* description: An array of data points for the series. For the <code>boxplot</code> series type, points can be given in the following ways:
 <ol>
 	<li><p>An array of arrays with 6 or 5 values. In this case, the values correspond to <code>x,low,q1,median,q3,high</code>. If the first value is a string, it is
 	applied as the name of the point, and the <code>x</code> value is inferred. The <code>x</code> value can also be omitted, in which case the inner arrays should be of length 5. Then the <code>x</code> value is automatically calculated, either starting at 0 and incremented by 1, or from <code>pointStart</code> 
 	and <code>pointInterval</code> given in the series options.</p>
<pre>data: [
    [0, 3, 0, 10, 3, 5], 
    [1, 7, 8, 7, 2, 9], 
    [2, 6, 9, 5, 1, 3]
]</pre></li>


<li><p>An array of objects with named values. The objects are
 	point configuration objects as seen below. If the total number of data points exceeds the series' <a href='#series<boxplot>.turboThreshold'>turboThreshold</a>, this option is not available.</p>

<pre>data: [{
    x: 1,
    low: 4,
    q1: 9,
    median: 9,
    q3: 1,
    high: 10,
    name: "Point2",
    color: "#00FF00"
}, {
    x: 1,
    low: 5,
    q1: 7,
    median: 3,
    q3: 6,
    high: 2,
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
@interface BoxplotData: HIChartsJSONSerializable

/**
* description: The <code>id</code> of a series in the <a href="#drilldown.series">drilldown.series</a> array to use for a drilldown for this point.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/basic/" target="_blank">Basic drilldown</a>
*/
@property(nonatomic, readwrite) NSString *drilldown;
/**
* description: An additional, individual class name for the data point's graphic representation.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: Whether the data point is selected initially.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">Styled mode</a> only. A specific color index to use for the point, so its graphic representations are given the class name <code>highcharts-color-{n}</code>.
*/
@property(nonatomic, readwrite) NSNumber *colorIndex;
/**
* description: <p><i>Requires Accessibility module</i></p>
<p>A description of the point to add to the screen reader information about the point.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/maps/accessibility/accessible-map/">Accessible map</a>
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: <p>The name of the point as shown in the legend, tooltip, dataLabel etc.</p>

<p>If the <a href="#xAxis.type">xAxis.type</a> is set to <code>category</code>, and no <a href="#xAxis.categories">categories</a> option exists, the category will be pulled from the <code>point.name</code> of the last series defined. For multiple series, best practice however is to define <code>xAxis.categories</code>.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/" target="_blank">Point names</a>
*/
@property(nonatomic, readwrite) NSString *name;
/**
* description: Individual color for the point. By default the color is pulled from the global <code>colors</code> array.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/color/" target="_blank">Mark the highest point</a>
*/
@property(nonatomic, readwrite) HexColor *color;
/**
* description: The median for each data point. This is drawn as a line through the middle area of the box.
*/
@property(nonatomic, readwrite) NSNumber *median;
/**
* description: Individual data label for each point. The options are the same as the ones for  <a class="internal" href="#plotOptions.series.dataLabels">plotOptions.series.dataLabels</a>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/" target="_blank">Show a label for the last value</a>
*/
@property(nonatomic, readwrite) id dataLabels;
/**
* description: The <code>high</code> value for each data point, signifying the highest value in the sample set. The top whisker is drawn here.
*/
@property(nonatomic, readwrite) NSNumber *high;
/**
* description: The <code>low</code> value for each data point, signifying the lowest value in the sample set. The bottom whisker is drawn here.
*/
@property(nonatomic, readwrite) NSNumber *low;
/**
* description: The y value of the point.
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x value of the point. For datetime axes, the X value is the timestamp in milliseconds since 1970.
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: An id for the point. This can be used after render time to get a pointer to the point object through <code>chart.get()</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/id/" target="_blank">Remove an id'd point</a>
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: The lower quartile for each data point. This is the bottom of the box.
*/
@property(nonatomic, readwrite) NSNumber *q1;
/**
* description: The higher quartile for each data point. This is the top of the box.
*/
@property(nonatomic, readwrite) NSNumber *q3;
/**
* description: Individual point events
*/
@property(nonatomic, readwrite) BoxplotDataEvents *events;
/**
* description: The rank for this point's data label in case of collision. If two data labels are about to overlap, only the one with the highest <code>labelrank</code> will be drawn.
*/
@property(nonatomic, readwrite) NSNumber *labelrank;

-(NSDictionary *)getParams;

@end
