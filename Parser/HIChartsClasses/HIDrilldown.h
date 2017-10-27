/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIActiveAxisLabelStyle.h"
#import "HIDrillUpButton.h"
#import "HIActiveDataLabelStyle.h"
#import "HIAnimation.h"


/**
* description: Options for drill down, the concept of inspecting increasingly high 
resolution data through clicking on chart items like columns or pie slices.
The drilldown feature requires the drilldown.js file to be loaded, 
found in the modules directory of the download package, or online at 
(code.highcharts.com/modules/drilldown.js)[code.highcharts.com/modules/drilldown.js].
*/
@interface HIDrilldown: HIChartsJSONSerializable

/**
* description: When this option is false, clicking a single point will drill down
all points in the same category, equivalent to clicking the X axis
label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/drilldown/allowpointdrilldown-false/ : Don't allow point drilldown
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowPointDrilldown;
/**
* description: Additional styles to apply to the X axis label for a point that
has drilldown data. By default it is underlined and blue to invite
to interaction.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/drilldown/labels/ : Label styles
* default: { "cursor": "pointer", "color": "#003399", "fontWeight": "bold", "textDecoration": "underline" }
*/
@property(nonatomic, readwrite) HIActiveAxisLabelStyle *activeAxisLabelStyle;
/**
* description: Options for the drill up button that appears when drilling down
on a series. The text for the button is defined in lang.drillUpText.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/drilldown/drillupbutton/ : Drill up button
*/
@property(nonatomic, readwrite) HIDrillUpButton *drillUpButton;
/**
* description: Additional styles to apply to the data label of a point that has
drilldown data. By default it is underlined and blue to invite to
interaction.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/drilldown/labels/ : Label styles
* default: { "cursor": "pointer", "color": "#003399", "fontWeight": "bold", "textDecoration": "underline" }
*/
@property(nonatomic, readwrite) HIActiveDataLabelStyle *activeDataLabelStyle;
/**
* description: An array of series configurations for the drill down. Each series
configuration uses the same syntax as the series option
set. These drilldown series are hidden by default. The drilldown
series is linked to the parent series' point by its id.
*/
@property(nonatomic, readwrite) NSArray *series;
/**
* description: Set the animation for all drilldown animations. Animation of a drilldown
occurs when drilling between a column point and a column series,
or a pie slice and a full pie series. Drilldown can still be used
between series and points of different types, but animation will
not occur.
The animation can either be set as a boolean or a configuration
object. If true, it will use the 'swing' jQuery easing and a duration
of 500 ms. If used as a configuration object, the following properties
are supported:

duration
The duration of the animation in milliseconds.
easing
A string reference to an easing function set on the Math object.
See http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-
animation-easing/ : the easing demo.

*/
@property(nonatomic, readwrite) HIAnimation *animation;

-(NSDictionary *)getParams;

@end
