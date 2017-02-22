#import "HIChartsJSONSerializable.h"


/**
* description: Event listeners for the chart.
*/
@interface HIChartEvents: HIChartsJSONSerializable

/**
* description: Fires after a chart is printed through the context menu item or the <code>Chart.print</code> method. Requires the exporting module.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/events-beforeprint-afterprint/" target="_blank">Rescale the chart to print</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *afterPrint;
/**
* description: <p>Fires when the chart is finished loading. Since v4.2.2, it also waits for images to be loaded, for example from point markers. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts.</p>

<p>There is also a second parameter to the chart constructor where a callback function can be passed to be executed on chart.load.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/events-load/" target="_blank">Alert on chart load</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *load;
/**
* description: Fires when drilling up from a drilldown series.
*/
@property(nonatomic, readwrite) NSString /* Function? */ *drillup;
/**
* description: Fires before a chart is printed through the context menu item or the <code>Chart.print</code> method. Requires the exporting module.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/events-beforeprint-afterprint/" target="_blank">Rescale the chart to print</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *beforePrint;
/**
* description: Fires when a series is added to the chart after load time, using the <code>addSeries</code> method. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts. Through <code>event.options</code> you can access the series options that was passed to the <code>addSeries</code>  method. Returning false prevents the series from being added.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/events-addseries/" target="_blank">Alert on add series</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *addSeries;
/**
* description: <p>Fires when an area of the chart has been selected. Selection is enabled by setting the chart's zoomType. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts. The default action for the  selection event is to zoom the  chart to the selected area. It can be prevented by calling  <code>event.preventDefault()</code>.</p> <p>Information on the selected area can be found through <code>event.xAxis</code> and  <code>event.yAxis</code>, which are arrays containing the axes of each dimension and each axis' min and max values. The primary axes are <code>event.xAxis[0]</code> and <code>event.yAxis[0]</code>. Remember the unit of a datetime axis is milliseconds since 1970-01-01 00:00:00.</p> 
<pre>selection: function(event) {
	// log the min and max of the primary, datetime x-axis
	console.log(
		Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', event.xAxis[0].min),
		Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', event.xAxis[0].max)
	);
	// log the min and max of the y axis
	console.log(event.yAxis[0].min, event.yAxis[0].max);
}</pre>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/events-selection/" target="_blank">Report on selection and reset</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/events-selection-points/" target="_blank">select a range of points through a drag selection</a>.
*/
@property(nonatomic, readwrite) NSString /* Function? */ *selection;
/**
* description: <p>Fires when a drilldown point is clicked, before the new series is added. This event is also utilized for async drilldown, where the seriesOptions are not added by option, but rather loaded async. Note that when clicking a category label to trigger multiple series drilldown, one <code>drilldown</code> event is triggered per point in the category.</p>

<p>Event arguments:</p>

<dl>

  <dt><code>category</code></dt>
  <dd>If a category label was clicked, which index.</dd>

  <dt><code>point</code></dt>
  <dd>The originating point.</dd>

  <dt><code>originalEvent</code></dt>
  <dd>The original browser event (usually click) that triggered the drilldown.</dd>

  <dt><code>points</code></dt>
  <dd>If a category label was clicked, this array holds all points corresponing to the category.</dd>

  <dt><code>seriesOptions</code></dt>
  <dd>Options for the new series</dd>

</dl>

* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/async/" target="_blank">Async drilldown</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *drilldown;
/**
* description: Fires after initial load of the chart (directly after the <code>load</code> event), and after each redraw (directly after the <code>redraw</code> event).
*/
@property(nonatomic, readwrite) NSString /* Function? */ *render;
/**
* description: Fires when the chart is redrawn, either after a call to chart.redraw() or after an axis, series or point is modified with the <code>redraw</code> option set to true. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/events-redraw/" target="_blank">Alert on chart redraw</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *redraw;
/**
* description: <p>Fires when clicking on the plot background. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts.</p> <p>Information on the clicked spot can be found through <code>event.xAxis</code> and  <code>event.yAxis</code>, which are arrays containing the axes of each dimension and each axis' value at the clicked spot. The primary axes are <code>event.xAxis[0]</code> and <code>event.yAxis[0]</code>. Remember the unit of a datetime axis is milliseconds since 1970-01-01 00:00:00.</p>
<pre>click: function(e) {
	console.log(
		Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', e.xAxis[0].value), 
		e.yAxis[0].value
	)
}</pre>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/events-click/" target="_blank">Alert coordinates on click</a>. <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/events-container/" target="_blank">Alternatively, attach event to container</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *click;
/**
* description: In a chart with multiple drilldown series, this event fires after all the series have been drilled up.
*/
@property(nonatomic, readwrite) NSString /* Function? */ *drillupall;

-(NSDictionary *)getParams;

@end
