/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Events for each single point.
*/
@interface HIAreasplinerangePointEvents: HIChartsJSONSerializable

/**
* description: Fires when a point is clicked. One parameter, event, is passed
to the function, containing common event information.
If the series.allowPointSelect option is true, the default action
for the point's click event is to toggle the point's select state.
 Returning false cancels this action.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-click/ : Click marker to alert values
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-click-column/ : Click column
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-click-url/ : Go to URL
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-point-events-click/ : Click marker to display values
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-point-events-click-url/ : Go to URL
*/
@property(nonatomic, readwrite) NSString /* Function */ *click;
/**
* description: Fires when the mouse leaves the area close to the point. One parameter,
event, is passed to the function, containing common event information.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-mouseover/ : Show values in the chart's corner on mouse over
*/
@property(nonatomic, readwrite) NSString /* Function */ *mouseOut;
/**
* description: Fires when the point is removed using the .remove() method. One
parameter, event, is passed to the function. Returning false
cancels the operation.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-remove/ : Remove point and confirm
*/
@property(nonatomic, readwrite) NSString /* Function */ *remove;
/**
* description: Fires when the mouse enters the area close to the point. One parameter,
event, is passed to the function, containing common event information.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-mouseover/ : Show values in the chart's corner on mouse over
*/
@property(nonatomic, readwrite) NSString /* Function */ *mouseOver;
/**
* description: Fires when the point is selected either programmatically or following
a click on the point. One parameter, event, is passed to the function.
 Returning false cancels the operation.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-select/ : Report the last selected point
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-allowpointselect/ : Report select and unselect
*/
@property(nonatomic, readwrite) NSString /* Function */ *select;
/**
* description: Fires when the point is unselected either programmatically or following
a click on the point. One parameter, event, is passed to the function.
 Returning false cancels the operation.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-unselect/ : Report the last unselected point
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-allowpointselect/ : Report select and unselect
*/
@property(nonatomic, readwrite) NSString /* Function */ *unselect;
/**
* description: Fires when the point is updated programmatically through the .update()
method. One parameter, event, is passed to the function. The new
point options can be accessed through event.options. Returning
false cancels the operation.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-update/ : Confirm point updating
*/
@property(nonatomic, readwrite) NSString /* Function */ *update;

-(NSDictionary *)getParams;

@end
