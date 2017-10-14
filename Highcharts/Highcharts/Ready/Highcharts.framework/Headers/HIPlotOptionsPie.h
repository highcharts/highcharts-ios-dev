/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsPieDataLabels.h"
#import "HIPlotOptionsPiePoint.h"
#import "HIPlotOptionsPieLabel.h"
#import "HIPlotOptionsPieEvents.h"
#import "HIPlotOptionsPieAnimation.h"
#import "HIPlotOptionsPieStates.h"
#import "HIPlotOptionsPieTooltip.h"
#import "HIColor.h"


/**
* description: A pie chart is a circular graphic which is divided into slices to illustrate
numerical proportion.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-basic/ : Pie chart
*/
@interface HIPlotOptionsPie: HIChartsJSONSerializable

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
* description: If true, a checkbox is displayed next to the legend item to allow
selecting the series. The state of the checkbox is determined by
the selected option.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showcheckbox-true/ : Show select box
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showCheckbox;
/**
* description: Options for the series data labels, appearing next to each data
point.
In styled mode, the data labels can be styled wtih the .highcharts-data-label-box and .highcharts-data-label class names (http://jsfiddle.
net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/series-
datalabels : see example).
*/
@property(nonatomic, readwrite) HIPlotOptionsPieDataLabels *dataLabels;
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
* description: The size of the inner diameter for the pie. A size greater than 0
renders a donut chart. Can be a percentage or pixel value. Percentages
are relative to the pie size. Pixel values are given as integers.
Note: in Highcharts < 4.1.2, the percentage was relative to the plot
area, not the pie size.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-innersize-80px/ : 80px inner size
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-innersize-50percent/ : 50% of the plot area
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/3d-pie-donut/ : 3D donut
* default: 0
*/
@property(nonatomic, readwrite) id /* NSString, NSNumber */ innerSize;
/**
* description: Properties for each single point.
*/
@property(nonatomic, readwrite) HIPlotOptionsPiePoint *point;
/**
* description: Whether to select the series initially. If showCheckbox is true,
the checkbox next to the series name in the legend will be checked for a
selected series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-selected/ : One out of two series selected
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: If a point is sliced, moved out from the center, how many pixels
should it be moved?.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-slicedoffset-20/ : 20px offset
* default: 10
*/
@property(nonatomic, readwrite) NSNumber *slicedOffset;
/**
* description: Same as accessibility.pointDescriptionFormatter, but for an individual series. Overrides
the chart wide configuration.
*/
@property(nonatomic, readwrite) NSString /* Function */ *pointDescriptionFormatter;
/**
* description: Whether to display this particular series or series type in the
legend. Since 2.1, pies are not shown in the legend by default.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showinlegend/ : One series in the legend, one hidden
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showInLegend;
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
* description: Sticky tracking of mouse events. When true, the mouseOut event
on a series isn't triggered until the mouse moves over another series,
or out of the plot area. When false, the mouseOut event on a
series is triggered when the mouse leaves the area around the series'
graph or markers. This also implies the tooltip. When stickyTracking
is false and tooltip.shared is false, the tooltip will be hidden
when moving the mouse between series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-true/ : True by default
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-false/ : False
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *stickyTracking;
/**
* description: An array specifying which option maps to which key in the data point
array. This makes it convenient to work with unstructured data arrays
from different sources.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-keys/ : An extended data array with keys
*/
@property(nonatomic, readwrite) NSArray<NSString *> *keys;
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
@property(nonatomic, readwrite) HIPlotOptionsPieLabel *label;
/**
* description: The diameter of the pie relative to the plot area. Can be a percentage
or pixel value. Pixel values are given as integers. The default
behaviour (as of 3.0) is to scale to the plot area and give room
for data labels within the plot area. As a consequence, the size
of the pie may vary when points are updated and data labels more
around. In that case it is best to set a fixed value, for example
"75%".

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-size/ : Smaller pie
*/
@property(nonatomic, readwrite) id /* NSString, NSNumber */ size;
/**
* description: The minimum size for a pie in response to auto margins. The pie will
try to shrink to make room for data labels in side the plot area,
 but only to this size.
* default: 80
*/
@property(nonatomic, readwrite) NSNumber *minSize;
/**
* description: General event handlers for the series items. These event hooks can also
be attached to the series at run time using the Highcharts.addEvent
function.
*/
@property(nonatomic, readwrite) HIPlotOptionsPieEvents *events;
/**
* description: Requires the Accessibility module.
A description of the series to add to the screen reader information
about the series.
* default: undefined
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: The start angle of the pie slices in degrees where 0 is top and 90
right.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-startangle-90/ : Start from right
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *startAngle;
/**
* description: The center of the pie chart relative to the plot area. Can be percentages
or pixel values. The default behaviour (as of 3.0) is to center
the pie so that all slices and data labels are within the plot area.
As a consequence, the pie may actually jump around in a chart with
dynamic values, as the data labels move. In that case, the center
should be explicitly set, for example to ["50%", "50%"].

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-center/ : Centered at 100, 100
* default: [null, null]
*/
@property(nonatomic, readwrite) NSArray /* <NSString, NSNumber> */ *center;
/**
* description: Set the initial visibility of the series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-visible/ : Two series, one hidden and one visible
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/plotoptions/series-visibility/ : Hidden series
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *visible;
/**
* description: Whether to apply a drop shadow to the graph line. Since 2.3 the shadow
can be an object configuration containing color, offsetX, offsetY,
 opacity and width.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-shadow/ : Shadow enabled
* default: false
*/
@property(nonatomic, readwrite) id /* Bool, Object */ shadow;
/**
* description: A class name to apply to the series' graphical elements.
*/
@property(nonatomic, readwrite) NSString *className;
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
@property(nonatomic, readwrite) HIPlotOptionsPieAnimation *animation;
/**
* description: The color of the border surrounding each slice. When null, the
border takes the same color as the slice fill. This can be used
together with a borderWidth to fill drawing gaps created by antialiazing
artefacts in borderless pies.
In styled mode, the border stroke is given in the .highcharts-point class.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-bordercolor-black/ : Black border
* default: #ffffff
*/
@property(nonatomic, readwrite) HIColor *borderColor;
@property(nonatomic, readwrite) NSNumber /* Bool */ *clip;
/**
* description: The SVG value used for the stroke-linecap and stroke-linejoin
of a line graph. Round means that lines are rounded in the ends and
bends.

* accepted values: ["round", "butt", "square"]
* default: round
*/
@property(nonatomic, readwrite) NSString *linecap;
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
* description: Enable or disable the mouse tracking for a specific series. This
includes point tooltips and click events on graphs and points. For
large datasets it improves performance.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-enablemousetracking-false/ : No mouse tracking
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-enablemousetracking-false/ : No mouse tracking
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enableMouseTracking;
/**
* description: If set to True, the accessibility module will skip past the points
in this series for keyboard navigation.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *skipKeyboardNavigation;
/**
* description: Styled mode only. A specific color index to use for the series, so its
graphic representations are given the class name highcharts-color-
{n}.
*/
@property(nonatomic, readwrite) NSNumber *colorIndex;
/**
* description: The id of another series to link to. Additionally,
the value can be ":previous" to link to the previous series. When
two series are linked, only the first one appears in the legend.
Toggling the visibility of this also toggles the linked series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/arearange-line/ : Linked series
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/arearange-line/ : Linked series
*/
@property(nonatomic, readwrite) NSString *linkedTo;
/**
* description: A wrapper object for all the series options in specific states.
*/
@property(nonatomic, readwrite) NSArray <HIPlotOptionsPieStates *> *states;
/**
* description: The thickness of a 3D pie. Requires highcharts-3d.js
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *depth;
/**
* description: The end angle of the pie in degrees where 0 is top and 90 is right.
Defaults to startAngle plus 360.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-semi-circle/ : Semi-circle donut
* default: null
*/
@property(nonatomic, readwrite) NSNumber *endAngle;
/**
* description: A configuration object for the tooltip rendering of each single series.
Properties are inherited from tooltip, but only the
following properties can be defined on a series level.
*/
@property(nonatomic, readwrite) HIPlotOptionsPieTooltip *tooltip;
/**
* description: The width of the border surrounding each slice.
When setting the border width to 0, there may be small gaps between
the slices due to SVG antialiasing artefacts. To work around this,
keep the border width at 0.5 or 1, but set the borderColor to
null instead.
In styled mode, the border stroke width is given in the .highcharts-point class.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-borderwidth/ : 3px border
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: Equivalent to chart.ignoreHiddenSeries,
this option tells whether the series shall be redrawn as if the
hidden point were null.
The default value changed from false to true with Highcharts
3.0.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-ignorehiddenpoint/ : True, the hiddden point is ignored
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *ignoreHiddenPoint;
/**
* description: A series specific or series type specific color set to use instead
of the global colors.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-monochrome/ : Set default colors for all pies
*/
@property(nonatomic, readwrite) NSArray<HIColor *> *colors;

-(NSDictionary *)getParams;

@end
