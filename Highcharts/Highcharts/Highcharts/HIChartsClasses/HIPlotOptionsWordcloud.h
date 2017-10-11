/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsWordcloudPoint.h"
#import "HIPlotOptionsWordcloudLabel.h"
#import "HIPlotOptionsWordcloudTooltip.h"
#import "HIPlotOptionsWordcloudStyle.h"
#import "HIPlotOptionsWordcloudEvents.h"
#import "HIPlotOptionsWordcloudRotation.h"
#import "HIPlotOptionsWordcloudAnimation.h"
#import "HIPlotOptionsWordcloudStates.h"
#import "HIColor.h"


/**
* description: A word cloud is a visualization of a set of words, where the size and
placement of a word is determined by how it is weighted.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/wordcloud : Word Cloud chart
*/
@interface HIPlotOptionsWordcloud: HIChartsJSONSerializable

/**
* description: This option decides which algorithm is used for placement, and rotation
of a word. The choice of algorith is therefore a crucial part of the
resulting layout of the wordcloud.
It is possible for users to add their own custom placement strategies
for use in word cloud. Read more about it in our
https://www.highcharts.com/docs/chart-and-series-types/word-cloud-series#custom-placement-strategies : documentation
* default: random
*/
@property(nonatomic, readwrite) NSString *placementStrategy;
/**
* description: Same as accessibility.pointDescriptionFormatter, but for an individual series. Overrides
the chart wide configuration.
*/
@property(nonatomic, readwrite) NSString /* Function */ *pointDescriptionFormatter;
/**
* description: Properties for each single point.
*/
@property(nonatomic, readwrite) HIPlotOptionsWordcloudPoint *point;
/**
* description: You can set the cursor to "pointer" if you have click events attached
to the series, to signal to the user that the points and lines can
be clicked.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-line/ : On line graph
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-column/ : On columns
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-scatter/ : On scatter markers
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/plotoptions/cursor/ : Pointer on a line graph
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-allowpointselect/ : Map area
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/mapbubble-allowpointselect/ : Map bubble
* accepted values: [null, "default", "none", "help", "pointer", "crosshair"]
*/
@property(nonatomic, readwrite) NSString *cursor;
/**
* description: The main color of the series. In line type series it applies to the
line and the point markers unless otherwise specified. In bar type
series it applies to the bars unless a color is specified per point.
The default value is pulled from the options.colors array.
In styled mode, the color can be defined by the
colorIndex option. Also, the series
color can be set with the .highcharts-series, .highcharts-color-{n},
.highcharts-{type}-series or .highcharts-series-{n} class, or
individual classes given by the className option.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-general/ : General plot option
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-specific/ : One specific series
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-area/ : Area color
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/category-map/ : Category map by multiple series
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: By default, series are exposed to screen readers as regions. By enabling
this option, the series element itself will be exposed in the same
way as the data points. This is useful if the series is not used
as a grouping entity in the chart, but you still want to attach a
description to the series.
Requires the Accessibility module.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/accessibility/art-grants/ : Accessible data visualization
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *exposeElementToA11y;
/**
* description: A series specific or series type specific color set to apply instead
of the global colors when colorByPoint is true.
*/
@property(nonatomic, readwrite) NSArray<HIColor *> *colors;
/**
* description: When using automatic point colors pulled from the options.colors
collection, this option determines whether the chart should receive
one color per series or one color per point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-false/ : False by default
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-true/ : True
* default: True
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *colorByPoint;
/**
* description: Set the initial visibility of the series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-visible/ : Two series, one hidden and one visible
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/plotoptions/series-visibility/ : Hidden series
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *visible;
/**
* description: The corner radius of the border surrounding each column or bar.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-borderradius/ : Rounded columns
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *borderRadius;
/**
* description: Series labels are placed as close to the series as possible in a
natural way, seeking to avoid other series. The goal of this
feature is to make the chart more easily readable, like if a
human designer placed the labels in the optimal position.
The series labels currently work with series types having a
graph or an area.
Requires the series-label.js module.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series-label/line-chart : Line chart
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/streamgraph : Stream graph
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series-label/stock-chart : Stock chart
*/
@property(nonatomic, readwrite) HIPlotOptionsWordcloudLabel *label;
/**
* description: Requires the Accessibility module.
A description of the series to add to the screen reader information
about the series.
* default: undefined
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: For some series, there is a limit that shuts down initial animation
by default when the total number of points in the chart is too high.
For example, for a column chart and its derivatives, animation doesn't
run if there is more than 250 points totally. To disable this cap, set
animationLimit to Infinity.
*/
@property(nonatomic, readwrite) NSNumber *animationLimit;
/**
* description: An array specifying which option maps to which key in the data point
array. This makes it convenient to work with unstructured data arrays
from different sources.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-keys/ : An extended data array with keys
*/
@property(nonatomic, readwrite) NSArray<NSString *> *keys;
/**
* description: If set to True, the accessibility module will skip past the points
in this series for keyboard navigation.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *skipKeyboardNavigation;
/**
* description: A configuration object for the tooltip rendering of each single series.
Properties are inherited from tooltip, but only the
following properties can be defined on a series level.
*/
@property(nonatomic, readwrite) HIPlotOptionsWordcloudTooltip *tooltip;
/**
* description: The color of the border surrounding each column or bar.
In styled mode, the border stroke can be set with the .highcharts-point
rule.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-bordercolor/ : Dark gray border
* default: #ffffff
*/
@property(nonatomic, readwrite) HIColor *borderColor;
/**
* description: CSS styles for the words.
* default: {"fontFamily":"Impact, sans-serif"}
*/
@property(nonatomic, readwrite) HIPlotOptionsWordcloudStyle *style;
/**
* description: Whether to display this particular series or series type in the legend.
The default value is true for standalone series, false for linked
series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showinlegend/ : One series in the legend, one hidden
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showInLegend;
/**
* description: Whether to select the series initially. If showCheckbox is true,
the checkbox next to the series name in the legend will be checked for a
selected series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-selected/ : One out of two series selected
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: Enable or disable the mouse tracking for a specific series. This
includes point tooltips and click events on graphs and points. For
large datasets it improves performance.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-enablemousetracking-false/ : No mouse tracking
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-enablemousetracking-false/ : No mouse tracking
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enableMouseTracking;
/**
* description: General event handlers for the series items. These event hooks can also
be attached to the series at run time using the Highcharts.addEvent
function.
*/
@property(nonatomic, readwrite) HIPlotOptionsWordcloudEvents *events;
/**
* description: When a series contains a data array that is longer than this, only
one dimensional arrays of numbers, or two dimensional arrays with
x and y values are allowed. Also, only the first point is tested,
and the rest are assumed to be the same format. This saves expensive
data checking and indexing in long series. Set it to 0 disable.
* default: 1000
*/
@property(nonatomic, readwrite) NSNumber *turboThreshold;
/**
* description: Rotation options for the words in the wordcloud.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/wordcloud-rotation : Word cloud with rotation
*/
@property(nonatomic, readwrite) HIPlotOptionsWordcloudRotation *rotation;
/**
* description: The width of the border surrounding each column or bar.
In styled mode, the stroke width can be set with the .highcharts-point
rule.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-borderwidth/ : 2px black border
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: Enable or disable the initial animation when a series is displayed.
The animation can also be set as a configuration object. Please
note that this option only applies to the initial animation of the
series itself. For other animations, see chart.animation and the animation parameter under the API methods. The
following properties are supported:

duration
The duration of the animation in milliseconds.
easing
A string reference to an easing function set on the Math object.
See the Custom easing function demo below.

Due to poor performance, animation is disabled in old IE browsers
for several chart types.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-disabled/ : Animation disabled
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-slower/ : Slower animation
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-easing/ : Custom easing function
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/plotoptions/animation-slower/ : Slower animation
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/plotoptions/animation-easing/ : Custom easing function
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-animation-true/ : Animation enabled on map series
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/mapbubble-animation-false/ : Disabled on mapbubble series
*/
@property(nonatomic, readwrite) HIPlotOptionsWordcloudAnimation *animation;
/**
* description: 3D columns only. The width of the colored edges.
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *edgeWidth;
/**
* description: A class name to apply to the series' graphical elements.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: Allow this series' points to be selected by clicking on the graphic 
(columns, point markers, pie slices, map areas etc).

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-line/ : Line
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-column/ : Column
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-pie/ : Pie
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-allowpointselect/ : Map area
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/mapbubble-allowpointselect/ : Map bubble
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowPointSelect;
/**
* description: Sticky tracking of mouse events. When true, the mouseOut event
on a series isn't triggered until the mouse moves over another series,
or out of the plot area. When false, the mouseOut event on a
series is triggered when the mouse leaves the area around the series'
graph or markers. This also implies the tooltip when not shared. When
stickyTracking is false and tooltip.shared is false, the tooltip will
be hidden when moving the mouse between series. Defaults to true for line
and area type series, but to false for columns, pies etc.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-true/ : True by default
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-false/ : False
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *stickyTracking;
/**
* description: Styled mode only. A specific color index to use for the series, so its
graphic representations are given the class name highcharts-color-
{n}.
*/
@property(nonatomic, readwrite) NSNumber *colorIndex;
/**
* description: A wrapper object for all the series options in specific states.
*/
@property(nonatomic, readwrite) NSArray <HIPlotOptionsWordcloudStates *> *states;
/**
* description: Spiral used for placing a word after the inital position experienced a
collision with either another word or the borders.
It is possible for users to add their own custom spiralling algorithms
for use in word cloud. Read more about it in our
https://www.highcharts.com/docs/chart-and-series-types/word-cloud-series#custom-spiralling-algorithm : documentation
* default: archimedean
*/
@property(nonatomic, readwrite) NSString *spiral;
/**
* description: When the series contains less points than the crop threshold, all
points are drawn, event if the points fall outside the visible plot
area at the current zoom. The advantage of drawing all points (including
markers and columns), is that animation is performed on updates.
On the other hand, when the series contains more points than the
crop threshold, the series data is cropped to only contain points
that fall within the plot area. The advantage of cropping away invisible
points is to increase performance on large series. .
* default: 50
*/
@property(nonatomic, readwrite) NSNumber *cropThreshold;
/**
* description: The id of another series to link to. Additionally,
the value can be ":previous" to link to the previous series. When
two series are linked, only the first one appears in the legend.
Toggling the visibility of this also toggles the linked series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/arearange-line/ : Linked series
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/arearange-line/ : Linked series
*/
@property(nonatomic, readwrite) NSString *linkedTo;

-(NSDictionary *)getParams;

@end
