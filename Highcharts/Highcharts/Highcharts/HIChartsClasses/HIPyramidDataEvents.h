#import "HIChartsJSONSerializable.h"


/**
* description: Individual point events
*/
@interface HIPyramidDataEvents: HIChartsJSONSerializable

/**
* description: Fires when the mouse leaves the area close to the point. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-mouseover/" target="_blank">Show values in the chart's corner on mouse over</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *mouseOut;
/**
* description: <p></p>Fires when a point is clicked. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts.<p></p> <p>If the <code>series.allowPointSelect</code> option is true, the default action for the point's click event is to toggle the point's select state. Returning <code>false</code> cancels this action.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-click/" target="_blank">Click marker to alert values</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-click-column/" target="_blank">click column</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-click-url/" target="_blank">go to URL</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *click;
/**
* description: Fires when the point is removed using the <code>.remove()</code> method. One parameter, <code>event</code>, is passed to the function. Returning <code>false</code> cancels the operation.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-remove/" target="_blank">Remove point and confirm</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *remove;
/**
* description: Fires when the point is selected either programmatically or following a click on the point. One parameter, <code>event</code>, is passed to the function. Returning <code>false</code> cancels the operation.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-select/" target="_blank">Report the last selected point</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *select;
/**
* description: Fires when the point is unselected either programmatically or following a click on the point. One parameter, <code>event</code>, is passed to the function. Returning <code>false</code> cancels the operation.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-unselect/" target="_blank">Report the last unselected point</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *unselect;
/**
* description: Fires when the mouse enters the area close to the point. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-mouseover/" target="_blank">Show values in the chart's corner on mouse over</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *mouseOver;
/**
* description: Fires when the point is updated programmatically through the <code>.update()</code> method. One parameter, <code>event</code>, is passed to the function. The  new point options can be accessed through <code>event.options</code>. Returning <code>false</code> cancels the operation.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-update/" target="_blank">Confirm point updating</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *update;

-(NSDictionary *)getParams;

@end
