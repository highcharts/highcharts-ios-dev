/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"
#import "HIFunction.h"


/**
* description: Event handlers for the axis.
*/
@interface HIEvents: HIChartsJSONSerializable

/**
* description: Fires when the mouse enters the area close to the point. One parameter,
event, is passed to the function, containing common event information.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-mouseover/ : Show values in the chart's corner on mouse over
*/
@property(nonatomic, readwrite) HIFunction *mouseOver;
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
*/
@property(nonatomic, readwrite) HIFunction *click;
/**
* description: Fires when the point is selected either programmatically or following
a click on the point. One parameter, event, is passed to the function.
 Returning false cancels the operation.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-select/ : Report the last selected point
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-allowpointselect/ : Report select and unselect
*/
@property(nonatomic, readwrite) HIFunction *select;
/**
* description: Fires when the mouse leaves the area close to the point. One parameter,
event, is passed to the function, containing common event information.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-mouseover/ : Show values in the chart's corner on mouse over
*/
@property(nonatomic, readwrite) HIFunction *mouseOut;
/**
* description: Fires when the point is unselected either programmatically or following
a click on the point. One parameter, event, is passed to the function.
 Returning false cancels the operation.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-unselect/ : Report the last unselected point
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-allowpointselect/ : Report select and unselect
*/
@property(nonatomic, readwrite) HIFunction *unselect;
/**
* description: Fires when the point is updated programmatically through the .update()
method. One parameter, event, is passed to the function. The new
point options can be accessed through event.options. Returning
false cancels the operation.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-update/ : Confirm point updating
*/
@property(nonatomic, readwrite) HIFunction *update;
/**
* description: Fires when the point is removed using the .remove() method. One
parameter, event, is passed to the function. Returning false
cancels the operation.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-point-events-remove/ : Remove point and confirm
*/
@property(nonatomic, readwrite) HIFunction *remove;
/**
* description: Fires when the series is shown after chart generation time, either
by clicking the legend item or by calling .show().

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-show/ : Alert when the series is shown by clicking the legend item.
*/
@property(nonatomic, readwrite) HIFunction *show;
/**
* description: Fires when the checkbox next to the series' name in the legend is
clicked. One parameter, event, is passed to the function. The state
of the checkbox is found by event.checked. The checked item is
found by event.item. Return false to prevent the default action
which is to toggle the select state of the series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-checkboxclick/ : Alert checkbox status
*/
@property(nonatomic, readwrite) HIFunction *checkboxClick;
/**
* description: Fires when the series is hidden after chart generation time, either
by clicking the legend item or by calling .hide().

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-hide/ : Alert when the series is hidden by clicking the legend item
*/
@property(nonatomic, readwrite) HIFunction *hide;
/**
* description: Fires after the series has finished its initial animation, or in
case animation is disabled, immediately as the series is displayed.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-afteranimate/ : Show label after animate
*/
@property(nonatomic, readwrite) HIFunction *afterAnimate;
/**
* description: Fires when the legend item belonging to the series is clicked. One
parameter, event, is passed to the function. The default action
is to toggle the visibility of the series. This can be prevented
by returning false or calling event.preventDefault().

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-legenditemclick/ : Confirm hiding and showing
*/
@property(nonatomic, readwrite) HIFunction *legendItemClick;
/**
* description: As opposed to the setExtremes event, this event fires after the
final min and max values are computed and corrected for minRange.
Fires when the minimum and maximum is set for the axis, either by
calling the .setExtremes() method or by selecting an area in the
chart. One parameter, event, is passed to the function, containing common event information.
The new user set minimum and maximum values can be found by event.
min and event.max. These reflect the axis minimum and maximum
in axis values. The actual data extremes are found in event.dataMin
and event.dataMax.
*/
@property(nonatomic, readwrite) HIFunction *afterSetExtremes;
/**
* description: An event fired when a point falls inside a break from this axis.
*/
@property(nonatomic, readwrite) HIFunction *pointInBreak;
/**
* description: Fires when the minimum and maximum is set for the axis, either by
calling the .setExtremes() method or by selecting an area in the
chart. One parameter, event, is passed to the function, containing common event information.
The new user set minimum and maximum values can be found by event.
min and event.max. These reflect the axis minimum and maximum
in data values. When an axis is zoomed all the way out from the "Reset
zoom" button, event.min and event.max are null, and the new extremes
are set based on this.dataMin and this.dataMax.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/xaxis/events-setextremes/ : Log new extremes on x axis
*/
@property(nonatomic, readwrite) HIFunction *setExtremes;
/**
* description: An event fired when a break from this axis occurs on a point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/axisbreak/break-visualized/ : Visualization of a Break
*/
@property(nonatomic, readwrite) HIFunction *pointBreak;
/**
* description: An event fired after the breaks have rendered.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/axisbreak/break-event// : AfterBreak Event
*/
@property(nonatomic, readwrite) HIFunction *afterBreaks;

-(NSDictionary *)getParams;

@end
