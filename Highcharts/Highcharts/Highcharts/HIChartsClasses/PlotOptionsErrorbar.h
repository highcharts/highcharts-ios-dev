#import "PlotOptionsErrorbarEvents.h"
#import "PlotOptionsErrorbarHIPoint.h"
#import "PlotOptionsErrorbarTooltip.h"
#import "HexColor.h"


/**
* description: Error bars are a graphical representation of the variability of data and are used on graphs to indicate the error, or uncertainty in a reported measurement. 
*/
@interface PlotOptionsErrorbar: HIChartsJSONSerializable

/**
* description: The parent series of the error bar. The default value links it to the previous series. Otherwise, use the id of the parent series.
*/
@property(nonatomic, readwrite) NSString *linkedTo;
/**
* description: The length of the whiskers, the horizontal lines marking low and high values. It can be a numerical pixel value, or a percentage value of the box width. Set <code>0</code> to disable whiskers.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/" target="_blank">True by default</a>
*/
@property(nonatomic, readwrite) NSString *whiskerLength;
/**
* description: When a series contains a data array that is longer than this, only one dimensional arrays of numbers,
*/
@property(nonatomic, readwrite) NSNumber *turboThreshold;
/**
* description: For some series, there is a limit that shuts down initial animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation doesn't run if there is more than 250 points totally. To disable this cap, set <code>animationLimit</code> to <code>Infinity</code>.
*/
@property(nonatomic, readwrite) NSNumber *animationLimit;
/**
* description: The color for the parts of the graph or points that are below the <a href="#plotOptions.series.threshold">threshold</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-negative-color/" target="_blank">Spline, area and column</a> - <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/arearange-negativecolor/" target="_blank">arearange</a>.
*/
@property(nonatomic, readwrite) HexColor *negativeColor;
@property(nonatomic, readwrite) PlotOptionsErrorbarEvents *events;
/**
* description: <p>Possible values: <code>null</code>, <code>"on"</code>, <code>"between"</code>.</p>
<p>In a column chart, when pointPlacement is <code>"on"</code>, the point will not create any padding of the X axis. In a polar column chart this means that the first column points directly north. If the pointPlacement is <code>"between"</code>, the columns will be laid out between ticks. This is useful for example for visualising an amount between two points in time or in a certain sector of a polar chart.</p>
<p>Since Highcharts 3.0.2, the point placement can also be numeric, where 0 is on the axis value, -0.5 is between this value and the previous, and 0.5 is between this value and the next. Unlike the textual options, numeric point placement options won't affect axis padding.</p>
<p>Note that pointPlacement needs a <a href="#plotOptions.series.pointRange">pointRange</a> to work. For column series this is computed, but for line-type series it needs to be set.</p>
<p>Defaults to <code>null</code> in cartesian charts, <code>"between"</code> in polar charts.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointplacement-between/" target="_blank">Between in a column chart</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointplacement-numeric/" target="_blank">numeric placement for custom layout</a>.
* accepted values: [null, "on", "between"]
*/
@property(nonatomic, readwrite) NSString *pointPlacement;
/**
* description: The color of the stem, the vertical line extending from the box to the whiskers. If <code>null</code>, the series color is used.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/" target="_blank">Box plot styling</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/" target="_blank">error bar styling</a>
*/
@property(nonatomic, readwrite) HexColor *stemColor;
/**
* description: The width of the line surrounding the box. If any of <a href="#plotOptions.boxplot.stemWidth">stemWidth</a>, <a href="#plotOptions.boxplot.medianWidth">medianWidth</a> or <a href="#plotOptions.boxplot.whiskerWidth">whiskerWidth</a> are <code>null</code>, the lineWidth also applies to these lines.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/" target="_blank">Box plot styling</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/" target="_blank">error bar styling</a>
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: On datetime series, this allows for setting the <a href="#plotOptions.series.pointInterval">pointInterval</a> to irregular time units, <code>day</code>, <code>month</code> and <code>year</code>. A day is usually the same as 24 hours, but pointIntervalUnit also takes the DST crossover into consideration when dealing with local time. Combine this option with <code>pointInterval</code> to draw weeks, quarters, 6 months, 10 years etc.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointintervalunit/" target="_blank">One point a month</a>
* accepted values: [null, "day", "month", "year"]
*/
@property(nonatomic, readwrite) NSString *pointIntervalUnit;
/**
* description: The X axis range that each point is valid for. This determines the width of the column. On a categorized axis, the range will be 1 by default (one category unit). On linear and datetime axes, the range will be computed as the distance between the two closest data points.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointrange/" target="_blank">Set the point range to one day on a data set with one week between the points</a>
*/
@property(nonatomic, readwrite) NSNumber *pointRange;
/**
* description: Defines the Axis on which the zones are applied.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-zoneaxis-x/" target="_blank">Zones on the X-Axis</a>
*/
@property(nonatomic, readwrite) NSString *zoneAxis;
/**
* description: Properties for each single point
*/
@property(nonatomic, readwrite) PlotOptionsErrorbarHIPoint *point;
/**
* description: A series specific or series type specific color set to apply instead of the global <a href="#colors">colors</a> when <a href="#plotOptions.column.colorByPoint">colorByPoint</a> is true.
*/
@property(nonatomic, readwrite) NSMutableArray<HexColor *> *colors;
/**
* description: Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-enablemousetracking-false/" target="_blank">No mouse tracking</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enableMouseTracking;
/**
* description: <p><i>Requires Accessibility module</i></p>
<p>A description of the series to add to the screen reader information about the series.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/stock/accessibility/accessible-stock/">Accessible stock chart</a>
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: <p>If no x values are given for the points in a series, pointInterval defines
 the interval of the x values. For example, if a series contains one value
 every decade starting from year 0, set pointInterval to 10.</p>
<p>Since Highcharts 4.1, it can be combined with <code>pointIntervalUnit</code> to draw irregular intervals.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointstart-datetime/" target="_blank">Datetime X axis</a>
*/
@property(nonatomic, readwrite) NSNumber *pointInterval;
/**
* description: Whether to select the series initially. If <code>showCheckbox</code> is true, the checkbox next to the series name will be checked for a selected series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-selected/" target="_blank">One out of two series selected</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: Sticky tracking of mouse events. When true, the <code>mouseOut</code> event
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-true/" target="_blank">True by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-false/" target="_blank">false</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *stickyTracking;
/**
* description: If no x values are given for the points in a series, pointStart defines on what value to start. For example, if a series contains one yearly value starting from 1945, set pointStart to 1945.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointstart-linear/" target="_blank">Linear</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointstart-datetime/" target="_blank">datetime</a> X axis
*/
@property(nonatomic, readwrite) NSNumber *pointStart;
/**
* description: A configuration object for the tooltip rendering of each single series. Properties are inherited from <a href="#tooltip">tooltip</a>, but only the following properties can be defined on a series level.
*/
@property(nonatomic, readwrite) PlotOptionsErrorbarTooltip *tooltip;
/**
* description: <p>An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the <code>zoneAxis</code> option.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the color zones are styled with the <code>.highcharts-zone-{n}</code> class, or custom classed from the <code>className</code> option (<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/color-zones/">view live demo</a>).</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-simple/" target="_blank">Color zones</a>
*/
@property(nonatomic, readwrite) NSMutableArray *zones;
/**
* description: Set the initial visibility of the series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-visible/" target="_blank">Two series, one hidden and one visible</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *visible;
/**
* description: An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-keys/" target="_blank">An extended data array with keys</a>
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *keys;
/**
* description: Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *getExtremesFromAll;
/**
* description: The width of the stem, the vertical line extending from the box to the whiskers. If <code>null</code>, the width is inherited from the <a href="#plotOptions.boxplot.lineWidth">lineWidth</a> option.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/" target="_blank">Box plot styling</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/" target="_blank">error bar styling</a>
*/
@property(nonatomic, readwrite) NSNumber *stemWidth;
/**
* description: 3D columns only. The width of the colored edges.
*/
@property(nonatomic, readwrite) NSNumber *edgeWidth;
/**
* description: You can set the cursor to "pointer" if you have click events attached to  the series, to signal to the user that the points and lines can be clicked.
* demo: Pointer cursor <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-line/" target="_blank">on line graph</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-column/" target="_blank">on columns</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-scatter/" target="_blank">on scatter markers</a>
* accepted values: [null, "default", "none", "help", "pointer", "crosshair"]
*/
@property(nonatomic, readwrite) NSString *cursor;
/**
* description: The main color of the bars. This can be overridden by <a href="#plotOptions.errorbar.stemColor">stemColor</a> and <a href="#plotOptions.errorbar.whiskerColor">whiskerColor</a> individually. 
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/" target="_blank">Error bar styling</a>
*/
@property(nonatomic, readwrite) HexColor *color;
/**
* description: A pixel value specifying a fixed width for each column or bar. When <code>null</code>, the width is calculated from the <code>pointPadding</code> and <code>groupPadding</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointwidth-20/" target="_blank">20px wide columns regardless of chart width
			or the amount of data points</a>
*/
@property(nonatomic, readwrite) NSNumber *pointWidth;
/**
* description: The line width of the whiskers, the horizontal lines marking low and high values. When <code>null</code>, the general <a href="#plotOptions.errorbar.lineWidth">lineWidth</a> applies.
* demo:  <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/" target="_blank">Error bar styling</a>
*/
@property(nonatomic, readwrite) NSNumber *whiskerWidth;
/**
* description: A wrapper object for all the series options in specific states.
*/
@property(nonatomic, readwrite) NSMutableArray *states;
/**
* description: The color of the whiskers, the horizontal lines marking low and high values. When <code>null</code>, the general series color is used.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/" target="_blank">Box plot styling</a>
*/
@property(nonatomic, readwrite) HexColor *whiskerColor;
/**
* description: Allow this series' points to be selected by clicking on the markers, bars or pie slices.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-line/" target="_blank">Line</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-column/" target="_blank">column</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-pie/" target="_blank">pie</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowPointSelect;
/**
* description: The maximum allowed pixel width for a column, translated to the height of a bar in a bar chart. This prevents the columns from becoming too wide when there is a small number of points in the chart.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-maxpointwidth-20/" target="_blank">Limited to 50</a>
*/
@property(nonatomic, readwrite) NSNumber *maxPointWidth;
/**
* description: A class name to apply to the series' graphical elements.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: The spacing between columns on the Z Axis in a 3D chart. Requires <code>highcharts-3d.js</code>.
*/
@property(nonatomic, readwrite) NSNumber *groupZPadding;
/**
* description: When using automatic point colors pulled from the <code>options.colors</code>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-false/" target="_blank">False by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-true/" target="_blank">true</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *colorByPoint;
/**
* description: Depth of the columns in a 3D column chart. Requires <code>highcharts-3d.js</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/column/">Basic 3D column chart</a>
*/
@property(nonatomic, readwrite) NSNumber *depth;
/**
* description: Padding between each column or bar, in x axis units.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointpadding-default/" target="_blank">0.1 by default</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointpadding-025/" target="_blank">0.25</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointpadding-none/" target="_blank">0 for tightly packed columns</a>,
*/
@property(nonatomic, readwrite) NSNumber *pointPadding;
/**
* description: 3D columns only. The color of the edges. Similar to <code>borderColor</code>, except it defaults to the same color as the column.
*/
@property(nonatomic, readwrite) HexColor *edgeColor;
/**
* description: The dash style of the stem, the vertical line extending from the box to the whiskers.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/" target="_blank">Box plot styling</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/" target="_blank">error bar styling</a>
* accepted values: ["Solid", "ShortDash", "ShortDot", "ShortDashDot", "ShortDashDotDot", "Dot", "Dash" ,"LongDash", "DashDot", "LongDashDot", "LongDashDotDot"]
*/
@property(nonatomic, readwrite) NSString *stemDashStyle;

-(NSDictionary *)getParams;

@end