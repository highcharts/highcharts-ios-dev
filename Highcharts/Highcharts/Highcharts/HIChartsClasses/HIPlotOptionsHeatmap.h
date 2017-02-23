#import "HIPlotOptionsHeatmapEvents.h"
#import "HIPlotOptionsHeatmapPoint.h"
#import "HIPlotOptionsHeatmapTooltip.h"
#import "HIPlotOptionsHeatmapDataLabels.h"
#import "HIHexColor.h"


/**
* description: The heatmap series type. This series type is available both in Highcharts and Highmaps.
The colors of each heat map point is usually determined by its value and controlled by settings on the colorAxis.
*/
@interface HIPlotOptionsHeatmap: HIChartsJSONSerializable

@property(nonatomic, readwrite) HIPlotOptionsHeatmapEvents *events;
/**
* description: Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *getExtremesFromAll;
/**
* description: The color of the border surrounding each column or bar.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the border stroke can be set with the .highcharts-point rule.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-bordercolor/ : Dark gray border
*/
@property(nonatomic, readwrite) HIHexColor *borderColor;
/**
* description: The row size - how many Y axis units each heatmap row should span.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/maps/demo/heatmap/ : 1 by default
*/
@property(nonatomic, readwrite) NSNumber *rowsize;
/**
* description: Defines the Axis on which the zones are applied.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-zoneaxis-x/ : Zones on the X-Axis
*/
@property(nonatomic, readwrite) NSString *zoneAxis;
/**
* description: Whether to display this particular series or series type in the legend. The default value is true for standalone series, false for linked series.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showinlegend/ : One series in the legend, one hidden
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showInLegend;
/**
* description: You can set the cursor to "pointer" if you have click events attached to  the series, to signal to the user that the points and lines can be clicked.
* demo: Pointer cursor http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-line/ : on line graph,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-column/ : on columns,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-scatter/ : on scatter markers
* accepted values: [null, "default", "none", "help", "pointer", "crosshair"]
*/
@property(nonatomic, readwrite) NSString *cursor;
/**
* description: Requires Accessibility module
A description of the series to add to the screen reader information about the series.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/stock/accessibility/accessible-stock/ : Accessible stock chart
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-keys/ : An extended data array with keys
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *keys;
/**
* description: Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing color, offsetX, offsetY, opacity and width.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-shadow/ : Shadow enabled
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *shadow;
/**
* description: The column size - how many X axis units each column in the heatmap should span.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/maps/demo/heatmap/ : One day
*/
@property(nonatomic, readwrite) NSNumber *colsize;
/**
* description: A series specific or series type specific color set to apply instead of the global colors when colorByPoint is true.
*/
@property(nonatomic, readwrite) NSMutableArray<HIHexColor *> *colors;
/**
* description: Allow this series' points to be selected by clicking on the markers, bars or pie slices.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-line/ : Line, 
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-column/ : column, 
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-pie/ : pie
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowPointSelect;
/**
* description: A class name to apply to the series' graphical elements.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: The corner radius of the border surrounding each column or bar.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-borderradius/ : Rounded columns
*/
@property(nonatomic, readwrite) NSNumber *borderRadius;
/**
* description: Whether to select the series initially. If showCheckbox is true, the checkbox next to the series name will be checked for a selected series.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-selected/ : One out of two series selected
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: Sticky tracking of mouse events. When true, the mouseOut event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the mouseOut event on a series is triggered when the mouse leaves the area around the series' graph or markers. This also implies the tooltip. When stickyTracking is false and tooltip.shared is false, the  tooltip will be hidden when moving the mouse between series. Defaults to true for line and area type series, but to false for columns, pies etc.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-true/ : True by default,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-false/ : false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *stickyTracking;
/**
* description: When a series contains a data array that is longer than this, only one dimensional arrays of numbers, or two dimensional arrays with x and y values are allowed. Also, only the first point is tested, and the rest are assumed to be the same format. This saves expensive data checking and indexing in long series. Set it to 0 disable.
*/
@property(nonatomic, readwrite) NSNumber *turboThreshold;
/**
* description: The width of the border surrounding each column or bar.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the stroke width can be set with the .highcharts-point rule.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-borderwidth/ : 2px black border
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: When using automatic point colors pulled from the options.colors collection, this option determines whether the chart should receive  one color per series or one color per point.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-false/ : False by default,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-true/ : true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *colorByPoint;
/**
* description: Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-enablemousetracking-false/ : No mouse tracking
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enableMouseTracking;
/**
* description: For some series, there is a limit that shuts down initial animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation doesn't run if there is more than 250 points totally. To disable this cap, set animationLimit to Infinity.
*/
@property(nonatomic, readwrite) NSNumber *animationLimit;
/**
* description: Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see chart.animation and the animation parameter under the API methods.		The following properties are supported:

duration
The duration of the animation in milliseconds.
easing
A string reference to an easing function set on the Math object. See http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-easing/ : the easing demo.


Due to poor performance, animation is disabled in old IE browsers for column charts and polar charts.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-disabled/ : Animation disabled,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-slower/ : slower animation,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-easing/ : custom easing function.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *animation;
/**
* description: The main color of the series. In heat maps this color is rarely used, as we mostly use the color to denote the value of each point. Unless options are set in the colorAxis, the default value is pulled from the options.colors array.
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: Properties for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsHeatmapPoint *point;
/**
* description: Set the initial visibility of the series.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-visible/ : Two series, one hidden and one visible
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *visible;
/**
* description: When the series contains less points than the crop threshold, all points are drawn,  event if the points fall outside the visible plot area at the current zoom. The advantage of drawing all points (including markers and columns), is that animation is performed on updates. On the other hand, when the series contains more points than the crop threshold, the series data is cropped to only contain points that fall within the plot area. The advantage of cropping away invisible points is to increase performance on large series.  .
*/
@property(nonatomic, readwrite) NSNumber *cropThreshold;
/**
* description: The maximum allowed pixel width for a column, translated to the height of a bar in a bar chart. This prevents the columns from becoming too wide when there is a small number of points in the chart.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-maxpointwidth-20/ : Limited to 50
*/
@property(nonatomic, readwrite) NSNumber *maxPointWidth;
/**
* description: A wrapper object for all the series options in specific states.
*/
@property(nonatomic, readwrite) NSMutableArray *states;
/**
* description: An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the zoneAxis option.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the color zones are styled with the .highcharts-zone-{n} class, or custom classed from the className option (http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/color-zones/ : view live demo).
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-simple/ : Color zones
*/
@property(nonatomic, readwrite) NSMutableArray *zones;
/**
* description: A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
*/
@property(nonatomic, readwrite) HIPlotOptionsHeatmapTooltip *tooltip;
/**
* description: If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the selected option.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showcheckbox-true/ : Show select box
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showCheckbox;
/**
* description: The id of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/arearange-line/ : Linked series
*/
@property(nonatomic, readwrite) NSString *linkedTo;
/**
* description: Options for the series data labels, appearing next to each data point.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the data labels can be styled wtih the .highcharts-data-label-box and .highcharts-data-label class names (see example).
*/
@property(nonatomic, readwrite) HIPlotOptionsHeatmapDataLabels *dataLabels;

-(NSDictionary *)getParams;

@end
