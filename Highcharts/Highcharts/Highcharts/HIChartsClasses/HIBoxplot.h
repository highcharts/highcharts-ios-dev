#import "HISeries.h"
#import "HIBoxplotTooltip.h"
#import "HIBoxplotPoint.h"
#import "HIBoxplotEvents.h"
#import "HIHexColor.h"


/**
* description: A boxplot series. If the type option is not specified, it is inherited from chart.type.
For options that apply to multiple series, it is recommended to add them to the pointOptions.series options structure. To apply to all series of this specific type, apply it to plotOptions.boxplot.
*/
@interface HIBoxplot: HISeries

/**
* description: The dash style of the stem, the vertical line extending from the box to the whiskers.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling, http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/ : error bar styling
* accepted values: ["Solid", "ShortDash", "ShortDot", "ShortDashDot", "ShortDashDotDot", "Dot", "Dash" ,"LongDash", "DashDot", "LongDashDot", "LongDashDotDot"]
*/
@property(nonatomic, readwrite) NSString *stemDashStyle;
/**
* description: Allow this series' points to be selected by clicking on the markers, bars or pie slices.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-line/ : Line, 
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-column/ : column, 
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-pie/ : pie
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowPointSelect;
/**
* description: The maximum allowed pixel width for a column, translated to the height of a bar in a bar chart. This prevents the columns from becoming too wide when there is a small number of points in the chart.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-maxpointwidth-20/ : Limited to 50
*/
@property(nonatomic, readwrite) NSNumber *maxPointWidth;
/**
* description: A configuration object for the tooltip rendering of each single series. Properties are inherited from tooltip, but only the following properties can be defined on a series level.
*/
@property(nonatomic, readwrite) HIBoxplotTooltip *tooltip;
/**
* description: The length of the whiskers, the horizontal lines marking low and high values. It can be a numerical pixel value, or a percentage value of the box width. Set 0 to disable whiskers.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : True by default
*/
@property(nonatomic, readwrite) NSString *whiskerLength;
/**
* description: Whether to group non-stacked columns or to let them render independent of each other. Non-grouped columns will be laid out individually and overlap each other.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-grouping-false/ : Grouping disabled
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *grouping;
/**
* description: The width of the line surrounding the box. If any of stemWidth, medianWidth or whiskerWidth are null, the lineWidth also applies to these lines.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling, http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/ : error bar styling
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: The color for the parts of the graph or points that are below the threshold.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-negative-color/ : Spline, area and column - http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/arearange-negativecolor/ : arearange.
*/
@property(nonatomic, readwrite) HIHexColor *negativeColor;
/**
* description: The line width of the whiskers, the horizontal lines marking low and high values. When null, the general lineWidth applies.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
*/
@property(nonatomic, readwrite) NSNumber *whiskerWidth;
/**
* description: A series specific or series type specific color set to apply instead of the global colors when colorByPoint is true.
*/
@property(nonatomic, readwrite) NSMutableArray<HIHexColor *> *colors;
/**
* description: Properties for each single point
*/
@property(nonatomic, readwrite) HIBoxplotPoint *point;
/**
* description: Padding between each value groups, in x axis units.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-grouppadding-default/ : 0.2 by default, 
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-grouppadding-none/ : no group padding - all 
			columns are evenly spaced
*/
@property(nonatomic, readwrite) NSNumber *groupPadding;
/**
* description: When a series contains a data array that is longer than this, only one dimensional arrays of numbers,
*/
@property(nonatomic, readwrite) NSNumber *turboThreshold;
/**
* description: The spacing between columns on the Z Axis in a 3D chart. Requires highcharts-3d.js.
*/
@property(nonatomic, readwrite) NSNumber *groupZPadding;
@property(nonatomic, readwrite) HIBoxplotEvents *events;
/**
* description: The id of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/arearange-line/ : Linked series
*/
@property(nonatomic, readwrite) NSString *linkedTo;
/**
* description: If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the selected option.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showcheckbox-true/ : Show select box
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showCheckbox;
/**
* description: Set the initial visibility of the series.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-visible/ : Two series, one hidden and one visible
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *visible;
/**
* description: If no x values are given for the points in a series, pointStart defines on what value to start. For example, if a series contains one yearly value starting from 1945, set pointStart to 1945.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointstart-linear/ : Linear,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointstart-datetime/ : datetime X axis
*/
@property(nonatomic, readwrite) NSNumber *pointStart;
/**
* description: Whether to display this particular series or series type in the legend. The default value is true for standalone series, false for linked series.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showinlegend/ : One series in the legend, one hidden
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showInLegend;
/**
* description: The fill color of the box.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
*/
@property(nonatomic, readwrite) HIHexColor *fillColor;
/**
* description: Whether to select the series initially. If showCheckbox is true, the checkbox next to the series name will be checked for a selected series.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-selected/ : One out of two series selected
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: When using automatic point colors pulled from the options.colors
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-false/ : False by default,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-true/ : true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *colorByPoint;
/**
* description: The color of the whiskers, the horizontal lines marking low and high values. When null, the general series color is used.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
*/
@property(nonatomic, readwrite) HIHexColor *whiskerColor;
/**
* description: On datetime series, this allows for setting the pointInterval to irregular time units, day, month and year. A day is usually the same as 24 hours, but pointIntervalUnit also takes the DST crossover into consideration when dealing with local time. Combine this option with pointInterval to draw weeks, quarters, 6 months, 10 years etc.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointintervalunit/ : One point a month
* accepted values: [null, "day", "month", "year"]
*/
@property(nonatomic, readwrite) NSString *pointIntervalUnit;
/**
* description: The pixel width of the median line. If null, the lineWidth is used.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
*/
@property(nonatomic, readwrite) NSNumber *medianWidth;
/**
* description: Sticky tracking of mouse events. When true, the mouseOut event
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-true/ : True by default,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-false/ : false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *stickyTracking;
/**
* description: You can set the cursor to "pointer" if you have click events attached to  the series, to signal to the user that the points and lines can be clicked.
* demo: Pointer cursor http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-line/ : on line graph,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-column/ : on columns,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-scatter/ : on scatter markers
* accepted values: [null, "default", "none", "help", "pointer", "crosshair"]
*/
@property(nonatomic, readwrite) NSString *cursor;
/**
* description: The color of the stem, the vertical line extending from the box to the whiskers. If null, the series color is used.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling, http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/ : error bar styling
*/
@property(nonatomic, readwrite) HIHexColor *stemColor;
/**
* description: Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *getExtremesFromAll;
/**
* description: A pixel value specifying a fixed width for each column or bar. When null, the width is calculated from the pointPadding and groupPadding.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointwidth-20/ : 20px wide columns regardless of chart width
			or the amount of data points
*/
@property(nonatomic, readwrite) NSNumber *pointWidth;
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
* description: Defines the Axis on which the zones are applied.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-zoneaxis-x/ : Zones on the X-Axis
*/
@property(nonatomic, readwrite) NSString *zoneAxis;
/**
* description: Padding between each column or bar, in x axis units.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointpadding-default/ : 0.1 by default, 
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointpadding-025/ : 0.25, 
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointpadding-none/ : 0 for tightly packed columns,
*/
@property(nonatomic, readwrite) NSNumber *pointPadding;
/**
* description: Possible values: null, "on", "between".
In a column chart, when pointPlacement is "on", the point will not create any padding of the X axis. In a polar column chart this means that the first column points directly north. If the pointPlacement is "between", the columns will be laid out between ticks. This is useful for example for visualising an amount between two points in time or in a certain sector of a polar chart.
Since Highcharts 3.0.2, the point placement can also be numeric, where 0 is on the axis value, -0.5 is between this value and the previous, and 0.5 is between this value and the next. Unlike the textual options, numeric point placement options won't affect axis padding.
Note that pointPlacement needs a pointRange to work. For column series this is computed, but for line-type series it needs to be set.
Defaults to null in cartesian charts, "between" in polar charts.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointplacement-between/ : Between in a column chart, http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointplacement-numeric/ : numeric placement for custom layout.
* accepted values: [null, "on", "between"]
*/
@property(nonatomic, readwrite) NSString *pointPlacement;
/**
* description: If no x values are given for the points in a series, pointInterval defines
 the interval of the x values. For example, if a series contains one value
 every decade starting from year 0, set pointInterval to 10.
Since Highcharts 4.1, it can be combined with pointIntervalUnit to draw irregular intervals.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointstart-datetime/ : Datetime X axis
*/
@property(nonatomic, readwrite) NSNumber *pointInterval;
/**
* description: The main color or the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the  options.colors array.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the series color can be set with the .highcharts-series, .highcharts-color-{n}, .highcharts-{type}-series or .highcharts-series-{n} class, or individual classes given by the className option.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-general/ : General plot option, 
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-specific/ : one specific series,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-area/ : area color
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: The X axis range that each point is valid for. This determines the width of the column. On a categorized axis, the range will be 1 by default (one category unit). On linear and datetime axes, the range will be computed as the distance between the two closest data points.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointrange/ : Set the point range to one day on a data set with one week between the points
*/
@property(nonatomic, readwrite) NSNumber *pointRange;
/**
* description: A class name to apply to the series' graphical elements.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-keys/ : An extended data array with keys
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *keys;
/**
* description: 3D columns only. The color of the edges. Similar to borderColor, except it defaults to the same color as the column.
*/
@property(nonatomic, readwrite) HIHexColor *edgeColor;
/**
* description: An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the zoneAxis option.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the color zones are styled with the .highcharts-zone-{n} class, or custom classed from the className option (http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/color-zones/ : view live demo).
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-simple/ : Color zones
*/
@property(nonatomic, readwrite) NSMutableArray *zones;
/**
* description: 3D columns only. The width of the colored edges.
*/
@property(nonatomic, readwrite) NSNumber *edgeWidth;
/**
* description: Depth of the columns in a 3D column chart. Requires highcharts-3d.js.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/column/ : Basic 3D column chart
*/
@property(nonatomic, readwrite) NSNumber *depth;
/**
* description: The width of the stem, the vertical line extending from the box to the whiskers. If null, the width is inherited from the lineWidth option.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling, http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/ : error bar styling
*/
@property(nonatomic, readwrite) NSNumber *stemWidth;
/**
* description: A wrapper object for all the series options in specific states.
*/
@property(nonatomic, readwrite) NSMutableArray *states;
/**
* description: Requires Accessibility module
A description of the series to add to the screen reader information about the series.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/stock/accessibility/accessible-stock/ : Accessible stock chart
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: The color of the median line. If null, the general series color applies.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling, http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/ : error bar styling
*/
@property(nonatomic, readwrite) HIHexColor *medianColor;

-(NSDictionary *)getParams;

@end