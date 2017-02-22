#import "HIChartsJSONSerializable.h"


/**
* description: Event handlers for the axis.
*/
@interface HIZAxisEvents: HIChartsJSONSerializable

/**
* description: <p>As opposed to the <code>setExtremes</code> event, this event fires after the final min and max values are computed and corrected for <code>minRange</code>.</p>

<p>Fires when the minimum and maximum is set for the axis, either by calling the <code>.setExtremes()</code> method or by selecting an area in the chart. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts.</p>

<p>The new user set minimum and maximum values can be found by <code>event.min</code> and <code>event.max</code>. These reflect the axis minimum and maximum in axis values. The actual data extremes are found in <code>event.dataMin</code> and <code>event.dataMax</code>.</p>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *afterSetExtremes;
/**
* description: An event fired when a break from this axis occurs on a point.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/axisbreak/break-visualized/" target="_blank">Visualization of a Break</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *pointBreak;
/**
* description: An event fired when a point falls inside a break from this axis.
*/
@property(nonatomic, readwrite) NSString /* Function? */ *pointInBreak;
/**
* description: An event fired after the breaks have rendered.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/axisbreak/break-event//" target="_blank">afterBreak Event</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *afterBreaks;
/**
* description: <p>Fires when the minimum and maximum is set for the axis, either by calling the <code>.setExtremes()</code> method or by selecting an area in the chart. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts.</p>

<p>The new user set minimum and maximum values can be found by <code>event.min</code> and <code>event.max</code>. These reflect the axis minimum and maximum in data values. When an axis is zoomed all the way out from the "Reset zoom" button, <code>event.min</code> and <code>event.max</code> are null, and the new extremes are set based on <code>this.dataMin</code> and <code>this.dataMax</code>.</p>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *setExtremes;

-(NSDictionary *)getParams;

@end
