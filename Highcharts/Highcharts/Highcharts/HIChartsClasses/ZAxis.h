#import "ZAxisCrosshair.h"
#import "ZAxisEvents.h"
#import "ZAxisLabels.h"
#import "ZAxisTitle.h"
#import "HexColor.h"


/**
* description: <p>The Z axis or depth axis for 3D plots.</p>
	<p>See <a class="internal" href="#Axis">the Axis object</a> for programmatic
	access to the axis.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/scatter-zaxis-categories/" target="_blank">Z-Axis with Categories</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/scatter-zaxis-grid/" target="_blank">Z-Axis with styling</a>
*/
@interface ZAxis: HIChartsJSONSerializable

/**
* description: <p>Tick interval in scale units for the minor ticks. On a linear axis, if <code>"auto"</code>, 
 the minor tick interval is calculated as a fifth of the tickInterval. If
 <code>null</code>, minor ticks are not shown.</p>
 <p>On logarithmic axes, the unit is the power of the value. For example, setting
 	the minorTickInterval to 1 puts one tick on each of 0.1, 1, 10, 100 etc. Setting
 	the minorTickInterval to 0.1 produces 9 ticks between 1 and 10, 
 	10 and 100 etc. A minorTickInterval of "auto" on a log axis results in a best guess,
 	attempting to enter approximately 5 minor ticks between each major tick.</p>

<p>If user settings dictate minor ticks to become too dense, they don't make sense, and will be ignored to prevent performance problems.</a>

<p>On axes using <a href="#xAxis.categories">categories</a>, minor ticks are not supported.</p>


* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minortickinterval-null/" target="_blank">Null by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minortickinterval-auto/" target="_blank">"auto" on linear Y axis</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minortickinterval-5/" target="_blank">5 units</a> on linear Y axis, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minortickinterval-log-auto/" target="_blank">"auto"</a> on logarithmic Y axis,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minortickinterval-log/" target="_blank">0.1</a> on logarithmic Y axis.
*/
@property(nonatomic, readwrite) NSString *minorTickInterval;
/**
* description: <p>Color for the main tick marks.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the stroke is given in the <code>.highcharts-tick</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/tickcolor/" target="_blank">Red ticks on X axis</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/axis-grid/" target="_blank">Styled mode</a>.
*/
@property(nonatomic, readwrite) HexColor *tickColor;
/**
* description: A callback function returning array defining where the ticks are laid out on the axis. This overrides the default behaviour of <a href="#xAxis.tickPixelInterval">tickPixelInterval</a> and <a href="#xAxis.tickInterval">tickInterval</a>. The automatic tick positions are accessible through <code>this.tickPositions</code> and can be modified by the callback.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/tickpositions-tickpositioner/" target="_blank">Demo of tickPositions and tickPositioner</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *tickPositioner;
/**
* description: <p>If categories are present for the xAxis, names are used instead of numbers for that axis. Since Highcharts 3.0, categories can also be extracted by giving each point a <a href="#series.data">name</a> and setting axis <a href="#xAxis.type">type</a> to <code>category</code>. However, if you have multiple series, best practice remains defining the <code>categories</code> array.</p>

<p>Example:
<pre>categories: ['Apples', 'Bananas', 'Oranges']</pre>
		 Defaults to <code>null</code>
</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/reflow-true/" target="_blank">With</a> and
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/categories/" target="_blank">without</a> categories
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *categories;
/**
* description: Whether axis, including axis title, line, ticks and labels, should be visible.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/visible/">Toggle axis visibility</a>.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *visible;
/**
* description: <p>Color of the grid lines extending the ticks across the plot area.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the stroke is given in the <code>.highcharts-grid-line</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/gridlinecolor/" target="_blank">Green lines</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/axis-grid/" target="_blank">Styled mode</a>.
*/
@property(nonatomic, readwrite) HexColor *gridLineColor;
/**
* description: The lowest allowed value for automatically computed axis extremes.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/floor-ceiling/" target="_blank">Floor and ceiling</a>
*/
@property(nonatomic, readwrite) NSNumber *floor;
/**
* description: Whether to reverse the axis so that the highest number is closest to the origin. If the chart is inverted, the x axis is reversed by default.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/reversed/" target="_blank">Reversed Y axis</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *reversed;
/**
* description: <p>Configure a crosshair that follows either the mouse pointer or the hovered point.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the crosshairs are styled in the <code>.highcharts-crosshair</code>, <code>.highcharts-crosshair-thin</code> or <code>.highcharts-xaxis-category</code> classes.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-both/" target="_blank">Crosshair on both axes</a>
*/
@property(nonatomic, readwrite) ZAxisCrosshair *crosshair;
/**
* description: Event handlers for the axis.
*/
@property(nonatomic, readwrite) ZAxisEvents *events;
/**
* description: Whether to allow decimals in this axis' ticks. When counting integers, like persons or hits on a web page, decimals should be avoided in the labels.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/allowdecimals-true/" target="_blank">True by default</a> (unwanted for this
			type of data), 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/allowdecimals-false/" target="_blank">false</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowDecimals;
/**
* description: The pixel width of the minor tick mark.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minortickwidth/" target="_blank">3px width</a>
*/
@property(nonatomic, readwrite) NSNumber *minorTickWidth;
/**
* description: An id for the axis. This can be used after render time to get a pointer to the axis object through <code>chart.get()</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/id/" target="_blank">Get the object</a>
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: The highest allowed value for automatically computed axis extremes.
* demo:  <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/floor-ceiling/" target="_blank">Floor and ceiling</a>
*/
@property(nonatomic, readwrite) NSNumber *ceiling;
/**
* description: <p>An array of lines stretching across the plot area, marking a specific value on one of the axes.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the plot lines are styled by the <code>.highcharts-plot-line</code> class in addition to the <code>className</code> option.</p>
*/
@property(nonatomic, readwrite) NSMutableArray *plotLines;
/**
* description: The dash or dot style of the grid lines. For possible values, see <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-dashstyle-all/">this demonstration</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/gridlinedashstyle/" target="_blank">Long dashes</a>
* accepted values: ["Solid", "ShortDash", "ShortDot", "ShortDashDot", "ShortDashDotDot", "Dot", "Dash" ,"LongDash", "DashDot", "LongDashDot", "LongDashDotDot"]
*/
@property(nonatomic, readwrite) NSString *gridLineDashStyle;
/**
* description: Applies only when the axis <code>type</code> is <code>category</code>. When <code>nameToX</code> is true, points are placed on the X axis according to their names. If the same point name is repeated in the same or another series, the point is placed on the same X position as other points of the same name. When <code>nameToX</code> is false, the points are laid out in increasing X positions regardless of their names, and the X axis category will take the name of the last point in each position.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/uniquenames-true/" target="_blank">True by default</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/uniquenames-false/" target="_blank">false</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *nameToX;
/**
* description: <p>The interval of the tick marks in axis units. When <code>null</code>, the tick interval
 is computed to approximately follow the <a href="#xAxis.tickPixelInterval">tickPixelInterval</a> on linear and datetime axes.
 On categorized axes, a <code>null</code> tickInterval will default to 1, one category. 
 Note that datetime axes are based on milliseconds, so for 
 example an interval of one day is expressed as <code>24 * 3600 * 1000</code>.</p>
 <p>On logarithmic axes, the tickInterval is based on powers, so a tickInterval of 1 means
 	one tick on each of 0.1, 1, 10, 100 etc. A tickInterval of 2 means a tick of 0.1, 10, 1000 etc.
 	A tickInterval of 0.2 puts a tick on 0.1, 0.2, 0.4, 0.6, 0.8, 1, 2, 4, 6, 8, 10, 20, 40 etc.</p>

<p>If the tickInterval is too dense for labels to be drawn, Highcharts may remove ticks.</p>

<p>If the chart has multiple axes, the <a href="#chart.alignTicks">alignTicks</a> option may interfere with the <code>tickInterval</code> setting.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/tickinterval-5/" target="_blank">Tick interval of 5 on a linear axis</a>
*/
@property(nonatomic, readwrite) NSNumber *tickInterval;
/**
* description: Whether to show the axis line and title when the axis has no data.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/showempty/" target="_blank">When clicking the legend to hide series, one axis preserves line and title, the other doesn't</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showEmpty;
/**
* description: Padding of the max value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the highest data value to appear on the edge of the plot area. When the axis' <code>max</code> option is set or a max extreme is set using <code>axis.setExtremes()</code>, the maxPadding will be ignored.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/maxpadding/" target="_blank">Max padding of 0.25 on y axis</a>
*/
@property(nonatomic, readwrite) NSNumber *maxPadding;
/**
* description: Whether to show the first tick label.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/showfirstlabel-false/" target="_blank">Set to false on X axis</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showFirstLabel;
/**
* description: The dash or dot style of the minor grid lines. For possible values, see <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-dashstyle-all/">this demonstration</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minorgridlinedashstyle/" target="_blank">Long dashes on minor grid lines</a>
* accepted values: ["Solid", "ShortDash", "ShortDot", "ShortDashDot", "ShortDashDotDot", "Dot", "Dash" ,"LongDash", "DashDot", "LongDashDot", "LongDashDotDot"]
*/
@property(nonatomic, readwrite) NSString *minorGridLineDashStyle;
/**
* description: Datetime axis only. An array determining what time intervals the ticks are allowed to fall on. Each array item is an array where the first value is the time unit and the  second value another array of allowed multiples. Defaults to:
<pre>units: [[
	'millisecond', // unit name
	[1, 2, 5, 10, 20, 25, 50, 100, 200, 500] // allowed multiples
], [
	'second',
	[1, 2, 5, 10, 15, 30]
], [
	'minute',
	[1, 2, 5, 10, 15, 30]
], [
	'hour',
	[1, 2, 3, 4, 6, 8, 12]
], [
	'day',
	[1]
], [
	'week',
	[1]
], [
	'month',
	[1, 3, 6]
], [
	'year',
	null
]]</pre>
*/
@property(nonatomic, readwrite) NSMutableArray *units;
/**
* description: For categorized axes only. If <code>on</code> the tick mark is placed in the center of  the category, if <code>between</code> the tick mark is placed between categories. The default is <code>between</code> if the <code>tickInterval</code> is 1, else <code>on</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/tickmarkplacement-between/" target="_blank">"between" by default</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/tickmarkplacement-on/" target="_blank">"on"</a>
* accepted values: [null, "on", "between"]
*/
@property(nonatomic, readwrite) NSString *tickmarkPlacement;
/**
* description: The axis labels show the number or category for each tick.
*/
@property(nonatomic, readwrite) ZAxisLabels *labels;
/**
* description: Whether to display the axis on the opposite side of the normal. The normal is on the left side for vertical axes and bottom for horizontal, so the opposite sides will be right and top respectively. This is typically used with dual or multiple axes.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/opposite/" target="_blank">Secondary Y axis opposite</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *opposite;
/**
* description: <p>The amount of ticks to draw on the axis. This opens up for aligning the ticks of multiple charts or panes within a chart. This option overrides the <code>tickPixelInterval</code> option.</p>
<p>This option only has an effect on linear axes. Datetime, logarithmic or category axes are not affected.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/tickamount/" target="_blank">8 ticks on Y axis</a>
*/
@property(nonatomic, readwrite) NSNumber *tickAmount;
/**
* description: <p>The minimum range to display on this axis. The entire axis will not be allowed to span over a smaller interval than this. For example, for a datetime axis the main unit is milliseconds. If minRange is set to 3600000, you can't zoom in more than to one hour.</p> 

<p>The default minRange for the x axis is five times the smallest interval between any of the data points.</p> 

<p>On a logarithmic axis, the unit for the minimum range is the power. So a minRange of 	1 means that the axis can be zoomed to 10-100, 100-1000, 1000-10000 etc.</p>

<p>Note that the <code>minPadding</code>, <code>maxPadding</code>, <code>startOnTick</code> and <code>endOnTick</code> settings also affect how the extremes of the axis are computed.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/minrange/" target="_blank">Minimum range of 5</a>
*/
@property(nonatomic, readwrite) NSNumber *minRange;
/**
* description: <p>An array of colored bands stretching across the plot area marking an interval on the axis.</p>

<p>In a gauge, a plot band on the Y axis (value axis) will stretch along the perimeter of the gauge.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the plot bands are styled by the <code>.highcharts-plot-band</code> class in addition to the <code>className</code> option.</p>
*/
@property(nonatomic, readwrite) NSMutableArray *plotBands;
/**
* description: The position of the major tick marks relative to the axis line. Can be one of <code>inside</code> and <code>outside</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/tickposition-outside/" target="_blank">"outside" by default</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/tickposition-inside/" target="_blank">"inside"</a> on X axis
* accepted values: ["inside", "outside"]
*/
@property(nonatomic, readwrite) NSString *tickPosition;
/**
* description: The pixel length of the main tick marks.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/ticklength/" target="_blank">20 px tick length on the X axis</a>
*/
@property(nonatomic, readwrite) NSNumber *tickLength;
/**
* description: For a datetime axis, the scale will automatically adjust to the appropriate unit.  This member gives the default string representations used for each unit. For intermediate values, different units may be used, for example the <code>day</code> unit can be used on midnight and <code>hour</code> unit be used for intermediate values on the same axis. For an overview of the replacement codes, see <a href="#Highcharts.dateFormat">dateFormat</a>.

Defaults to:
<pre>{
	millisecond: '%H:%M:%S.%L',
	second: '%H:%M:%S',
	minute: '%H:%M',
	hour: '%H:%M',
	day: '%e. %b',
	week: '%e. %b',
	month: '%b \'%y',
	year: '%Y'
}</pre>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/datetimelabelformats/" target="_blank">Different day format on X axis</a>
*/
@property(nonatomic, readwrite) id dateTimeLabelFormats;
/**
* description: <p>If tickInterval is <code>null</code> this option sets the approximate pixel interval of the tick marks. Not applicable to categorized axis.</p>

<p>The tick interval is also influenced by the <a href="#xAxis.minTickInterval">minTickInterval</a> option, that, by default prevents ticks from being denser than the data points.</p>

<p>Defaults to <code>72</code>  for the Y axis and <code>100</code> for the X axis.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/tickpixelinterval-50/" target="_blank">50 px on X axis</a>
*/
@property(nonatomic, readwrite) NSNumber *tickPixelInterval;
/**
* description: The pixel length of the minor tick marks.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minorticklength/" target="_blank">10px on Y axis</a>
*/
@property(nonatomic, readwrite) NSNumber *minorTickLength;
/**
* description: The distance in pixels from the plot area to the axis line. A positive offset moves the axis with it's line, labels and ticks away from the plot area. This is typically used when two or more axes are displayed on the same side of the plot. With multiple axes the offset is dynamically adjusted to avoid collision, this can be overridden by setting offset explicitly.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/offset/" target="_blank">Y axis offset of 70</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/offset-centered/" target="_blank">Axes positioned in the center of the plot</a>
*/
@property(nonatomic, readwrite) NSNumber *offset;
/**
* description: Whether to force the axis to end on a tick. Use this option with the <code>maxPadding</code> option to control the axis end.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/reflow-true/" target="_blank">True by default</a> and
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/endontick/" target="_blank">false</a> for Y axis
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *endOnTick;
/**
* description: A soft maximum for the axis. If the series data maximum is greater than this, the axis will stay at this maximum, but if the series data maximum is higher, the axis will flex to show all data.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/softmin-softmax/" target="_blank">Soft min and max</a>
*/
@property(nonatomic, readwrite) NSNumber *softMax;
/**
* description: The type of axis. Can be one of <code>linear</code>, <code>logarithmic</code>, <code>datetime</code> or <code>category</code>. In a datetime axis, the numbers are given in milliseconds, and tick marks are placed 		on appropriate values like full hours or days. In a category axis, the <a href="#series<line>.data.name">point names</a> of the chart's series are used for categories, if not a <a href="#xAxis.categories">categories</a> array is defined.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/type-linear/" target="_blank">"linear"</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/type-datetime/" target="_blank">"datetime" with regular intervals</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/type-datetime-irregular/" target="_blank">"datetime" with irregular intervals</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/type-log/" target="_blank">"logarithmic"</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/type-log-minorgrid/" target="_blank">"logarithmic" with minor grid lines</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/type-log-both/" target="_blank">"logarithmic" on two axes</a>.
* accepted values: ["linear", "logarithmic", "datetime", "category"]
*/
@property(nonatomic, readwrite) NSString *type;
/**
* description: Deprecated. Renamed to <code>minRange</code> as of Highcharts 2.2.
*/
@property(nonatomic, readwrite) NSNumber *maxZoom;
/**
* description: <p>The color of the line marking the axis itself.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the line stroke is given in the <code>.highcharts-axis-line</code> or <code>.highcharts-xaxis-line</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/linecolor/" target="_blank">A red line on Y axis</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/axis/" target="_blank">Axes in styled mode</a>.
*/
@property(nonatomic, readwrite) HexColor *lineColor;
/**
* description: The minimum tick interval allowed in axis values. For example on zooming in on an axis with daily data, this can be used to prevent the axis from showing hours. Defaults to the closest distance between two points on the axis.
*/
@property(nonatomic, readwrite) NSNumber *minTickInterval;
/**
* description: Whether to show the last tick label.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/showlastlabel-true/" target="_blank">Set to true on X axis</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showLastLabel;
/**
* description: The minimum value of the axis. If <code>null</code> the min value is automatically calculated. If the <code>startOnTick</code> option is true, the <code>min</code> value might be rounded down.
* demo: Y axis min of <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/min-startontick-false/" target="_blank">-50 with startOnTick to false</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/min-startontick-true/" target="_blank">-50 with startOnTick true by default</a>
*/
@property(nonatomic, readwrite) NSNumber *min;
/**
* description: The position of the minor tick marks relative to the axis line. Can be one of <code>inside</code> and <code>outside</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minortickposition-outside/" target="_blank">Outside by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minortickposition-inside/" target="_blank">inside</a>
* accepted values: ["inside", "outside"]
*/
@property(nonatomic, readwrite) NSString *minorTickPosition;
/**
* description: An array defining where the ticks are laid out on the axis. This overrides the default behaviour of <a href="#xAxis.tickPixelInterval">tickPixelInterval</a> and <a href="#xAxis.tickInterval">tickInterval</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/tickpositions-tickpositioner/" target="_blank">Demo of tickPositions and tickPositioner</a>
*/
@property(nonatomic, readwrite) NSMutableArray<NSNumber *> *tickPositions;
/**
* description: <p>The width of the line marking the axis itself.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the stroke width is given in the <code>.highcharts-axis-line</code> or <code>.highcharts-xaxis-line</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/linecolor/" target="_blank">A 1px line on Y axis</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/axis/" target="_blank">Axes in styled mode</a>.
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: Index of another axis that this axis is linked to. When an axis is linked to a master axis, it will take the same extremes as the master, but as assigned by min or max or by setExtremes. It can be used to show additional info, or to ease reading the chart by duplicating the scales.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/linkedto/" target="_blank">Different string formats of the same date</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/linkedto/" target="_blank">Y values on both sides</a>
*/
@property(nonatomic, readwrite) NSNumber *linkedTo;
/**
* description: <p><i>Requires Accessibility module</i></p>

<p>Description of the axis to screen reader users.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/accessibility/advanced-accessible/">Accessible complex chart</a>
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: Color for the minor tick marks.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minortickcolor/" target="_blank">Black tick marks on Y axis</a>
*/
@property(nonatomic, readwrite) HexColor *minorTickColor;
/**
* description: A soft minimum for the axis. If the series data minimum is greater than this, the axis will stay at this minimum, but if the series data minimum is lower, the axis will flex to show all data.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/softmin-softmax/" target="_blank">Soft min and max</a>
*/
@property(nonatomic, readwrite) NSNumber *softMin;
/**
* description: <p>Color of the minor, secondary grid lines.</p>


<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the stroke width is given in the <code>.highcharts-minor-grid-line</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minorgridlinecolor/" target="_blank">Bright grey lines from Y axis</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/axis-grid/" target="_blank">Styled mode</a>.
*/
@property(nonatomic, readwrite) HexColor *minorGridLineColor;
/**
* description: A class name that opens for styling the axis by CSS, especially in Highcharts <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>. The class name is applied to group elements for the grid, axis elements and labels.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/axis/" target="_blank">Multiple axes with separate styling</a>.

*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. When the axis' <code>min</code> option is set or a min extreme is set using <code>axis.setExtremes()</code>, the minPadding will be ignored.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minpadding/" target="_blank">Min padding of 0.2</a>
*/
@property(nonatomic, readwrite) NSNumber *minPadding;
/**
* description: <p>The maximum value of the axis. If <code>null</code>, the max value is automatically calculated. If the <code>endOnTick</code> option is true, the <code>max</code> value might be rounded up.</p>

<p>If a <a href="#yAxis.tickAmount">tickAmount</a> is set, the axis may be extended beyond the set max in order to reach the given number of ticks. The same may happen in a chart with multiple axes, determined by  <a class="internal" href="#chart">chart.alignTicks</a>, where a <code>tickAmount</code> is applied internally.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/max-200/" target="_blank">Y axis max of 200</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/max-logarithmic/" target="_blank">Y axis max on logarithmic axis</a>
*/
@property(nonatomic, readwrite) NSNumber *max;
/**
* description: <p>Width of the minor, secondary grid lines.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the stroke width is given in the <code>.highcharts-grid-line</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/minorgridlinewidth/" target="_blank">2px lines from Y axis </a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/axis-grid/" target="_blank">Styled mode</a>.
*/
@property(nonatomic, readwrite) NSNumber *minorGridLineWidth;
/**
* description: When using an alternate grid color, a band is painted across the plot area between every other grid line.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/alternategridcolor/" target="_blank">Alternate grid color on the Y axis</a>
*/
@property(nonatomic, readwrite) HexColor *alternateGridColor;
/**
* description: The axis title, showing next to the axis line.
*/
@property(nonatomic, readwrite) ZAxisTitle *title;
/**
* description: For datetime axes, this decides where to put the tick between weeks. 0 = Sunday, 1 = Monday.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/startofweek-monday/" target="_blank">Monday by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/startofweek-sunday/" target="_blank">Sunday</a>
*/
@property(nonatomic, readwrite) NSNumber *startOfWeek;
/**
* description: Whether to force the axis to start on a tick. Use this option with the <code>minPadding</code> option to control the axis start.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/startontick-false/" target="_blank">False by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/startontick-true/" target="_blank">true</a> on X axis
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *startOnTick;
/**
* description: <p>The width of the grid lines extending the ticks across the plot area.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the stroke width is given in the <code>.highcharts-grid-line</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/gridlinewidth/" target="_blank">2px lines</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/axis-grid/" target="_blank">Styled mode</a>.

*/
@property(nonatomic, readwrite) NSNumber *gridLineWidth;
/**
* description: The Z index of the grid lines.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/gridzindex/" target="_blank">A Z index of 4 renders the grid above the graph</a>
*/
@property(nonatomic, readwrite) NSNumber *gridZIndex;
/**
* description: <p>The pixel width of the major tick marks.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the stroke width is given in the <code>.highcharts-tick</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/tickwidth/" target="_blank">10 px width</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/axis-grid/" target="_blank">Styled mode</a>.
*/
@property(nonatomic, readwrite) NSNumber *tickWidth;

-(NSDictionary *)getParams;

@end
