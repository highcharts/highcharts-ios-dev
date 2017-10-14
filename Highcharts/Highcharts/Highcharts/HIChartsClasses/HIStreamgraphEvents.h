/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: General event handlers for the series items. These event hooks can also
be attached to the series at run time using the Highcharts.addEvent
function.
*/
@interface HIStreamgraphEvents: HIChartsJSONSerializable

/**
* description: Fires when the legend item belonging to the series is clicked. One
parameter, event, is passed to the function. The default action
is to toggle the visibility of the series. This can be prevented
by returning false or calling event.preventDefault().

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-legenditemclick/ : Confirm hiding and showing
*/
@property(nonatomic, readwrite) NSString /* Function */ *legendItemClick;
/**
* description: Fires when the series is shown after chart generation time, either
by clicking the legend item or by calling .show().

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-show/ : Alert when the series is shown by clicking the legend item.
*/
@property(nonatomic, readwrite) NSString /* Function */ *show;
/**
* description: Fires when the checkbox next to the series' name in the legend is
clicked. One parameter, event, is passed to the function. The state
of the checkbox is found by event.checked. The checked item is
found by event.item. Return false to prevent the default action
which is to toggle the select state of the series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-checkboxclick/ : Alert checkbox status
*/
@property(nonatomic, readwrite) NSString /* Function */ *checkboxClick;
/**
* description: Fires when the series is hidden after chart generation time, either
by clicking the legend item or by calling .hide().

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-hide/ : Alert when the series is hidden by clicking the legend item
*/
@property(nonatomic, readwrite) NSString /* Function */ *hide;
/**
* description: Fires after the series has finished its initial animation, or in
case animation is disabled, immediately as the series is displayed.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-afteranimate/ : Show label after animate
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-afteranimate/ : Show label after animate
*/
@property(nonatomic, readwrite) NSString /* Function */ *afterAnimate;
/**
* description: Fires when the mouse enters the graph. One parameter, event, is
passed to the function, containing common event information.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-mouseover-sticky/ : With sticky tracking by default
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-mouseover-no-sticky/ : Without sticky tracking
*/
@property(nonatomic, readwrite) NSString /* Function */ *mouseOver;
/**
* description: Fires when the mouse leaves the graph. One parameter, event, is
passed to the function, containing common event information. If the
stickyTracking option is true, mouseOut
doesn't happen before the mouse enters another graph or leaves the
plot area.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-mouseover-sticky/ : With sticky tracking by default
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-mouseover-no-sticky/ : Without sticky tracking
*/
@property(nonatomic, readwrite) NSString /* Function */ *mouseOut;
/**
* description: Fires when the series is clicked. One parameter, event, is passed
to the function, containing common event information. Additionally,
event.point holds a pointer to the nearest point on the graph.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-events-click/ : Alert click info
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/plotoptions/series-events-click/ : Alert click info
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-events-click/ : Display click info in subtitle
*/
@property(nonatomic, readwrite) NSString /* Function */ *click;

-(NSDictionary *)getParams;

@end
