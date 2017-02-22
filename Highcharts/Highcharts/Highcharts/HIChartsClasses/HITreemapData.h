#import "HITreemapDataEvents.h"
#import "HIHexColor.h"


/**
* description: An array of data points for the series. For the <code>treemap</code> series type, points can be given in the following ways:
 <ol>
 	<li>An array of numerical values. In this case, the numerical values will 
 	be interpreted as <code>value</code> options.  Example:
<pre>data: [0, 5, 3, 5]</pre>
 	</li>
 <li><p>An array of objects with named values. The objects are
 	point configuration objects as seen below. If the total number of data points exceeds the series' <a href='#series<treemap>.turboThreshold'>turboThreshold</a>, this option is not available.</p>

<pre>data: [{
    value: 7,
    name: "Point2",
    color: "#00FF00"
}, {
    value: 2,
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
@interface HITreemapData: HIChartsJSONSerializable

/**
* description: Individual point events
*/
@property(nonatomic, readwrite) HITreemapDataEvents *events;
/**
* description: Whether the data point is selected initially.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: <p><i>Requires Accessibility module</i></p>
<p>A description of the point to add to the screen reader information about the point.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/maps/accessibility/accessible-map/">Accessible map</a>
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: The <code>id</code> of a series in the <a href="#drilldown.series">drilldown.series</a> array to use for a drilldown for this point.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/basic/" target="_blank">Basic drilldown</a>
*/
@property(nonatomic, readwrite) NSString *drilldown;
/**
* description: <p>The name of the point as shown in the legend, tooltip, dataLabel etc.</p>

<p>If the <a href="#xAxis.type">xAxis.type</a> is set to <code>category</code>, and no <a href="#xAxis.categories">categories</a> option exists, the category will be pulled from the <code>point.name</code> of the last series defined. For multiple series, best practice however is to define <code>xAxis.categories</code>.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/" target="_blank">Point names</a>
*/
@property(nonatomic, readwrite) NSString *name;
/**
* description: Individual data label for each point. The options are the same as the ones for  <a class="internal" href="#plotOptions.series.dataLabels">plotOptions.series.dataLabels</a>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/" target="_blank">Show a label for the last value</a>
*/
@property(nonatomic, readwrite) id dataLabels;
/**
* description: The rank for this point's data label in case of collision. If two data labels are about to overlap, only the one with the highest <code>labelrank</code> will be drawn.
*/
@property(nonatomic, readwrite) NSNumber *labelrank;
/**
* description: Serves a purpose only if a colorAxis object is defined in the chart options. This value will decide which color the point gets from the scale of the colorAxis.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/treemap-coloraxis">Treemap with a colorAxis</a>
*/
@property(nonatomic, readwrite) NSNumber *colorValue;
/**
* description: <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">Styled mode</a> only. A specific color index to use for the point, so its graphic representations are given the class name <code>highcharts-color-{n}</code>.
*/
@property(nonatomic, readwrite) NSNumber *colorIndex;
/**
* description: An additional, individual class name for the data point's graphic representation.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: An id for the point. This can be used after render time to get a pointer to the point object through <code>chart.get()</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/id/" target="_blank">Remove an id'd point</a>
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: The value of the point, resulting in a relative area of the point in the treemap.
*/
@property(nonatomic, readwrite) NSNumber *value;
/**
* description: The color of the point. In heat maps the point color is rarely set explicitly, as we use the color to denote the <code>value</code>. Options for this are set in the <a href="#colorAxis">colorAxis</a> configuration.
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: Only for treemap. Use this option to build a tree structure. The value should be the id of the point which is the parent. If no points has a matching id, or this option is undefined, then the parent will be set to the root.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/point/parent/" target="_blank">Point parent</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/treemap-with-levels/" target="_blank">Example where parent id is not matching</a>
*/
@property(nonatomic, readwrite) NSString *parent;

-(NSDictionary *)getParams;

@end
