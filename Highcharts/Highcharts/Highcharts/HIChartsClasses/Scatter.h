#import "Series.h"
#import "ScatterMarker.h"
#import "ScatterDataLabels.h"
#import "ScatterTooltip.h"
#import "ScatterEvents.h"
#import "ScatterHIPoint.h"
#import "HexColor.h"


/**
* description: <p>A <code>scatter</code> series. If the <a href="#series<scatter>.type">type</a> option is not specified, it is inherited from <a href="#chart.type">chart.type</a>.</p>

<p>For options that apply to multiple series, it is recommended to add them to the <a href="#pointOptions.series">pointOptions.series</a> options structure. To apply to all series of this specific type, apply it to <a href="#plotOptions.scatter">plotOptions.scatter</a>.</p>
*/
@interface Scatter: Series

/**
* description: <p>Options for the point markers of line-like series. Properties like <code>fillColor</code>, <code>lineColor</code> and <code>lineWidth</code> define the visual appearance of the markers. Other series types, like column series, don't have markers, but have visual options on the series level instead.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the markers can be styled with the <code>.highcharts-point</code>, <code>.highcharts-point-hover</code> and <code>.highcharts-point-select</code> class names.</p>
*/
@property(nonatomic, readwrite) ScatterMarker *marker;
/**
* description: A wrapper object for all the series options in specific states.
*/
@property(nonatomic, readwrite) NSMutableArray /*ScatterStates*/ *states;
/**
* description: If no x values are given for the points in a series, pointStart defines on what value to start. For example, if a series contains one yearly value starting from 1945, set pointStart to 1945.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointstart-linear/" target="_blank">Linear</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointstart-datetime/" target="_blank">datetime</a> X axis
*/
@property(nonatomic, readwrite) NSNumber *pointStart;
/**
* description: Set the initial visibility of the series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-visible/" target="_blank">Two series, one hidden and one visible</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *visible;
/**
* description: <p>An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the <code>zoneAxis</code> option.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the color zones are styled with the <code>.highcharts-zone-{n}</code> class, or custom classed from the <code>className</code> option (<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/color-zones/">view live demo</a>).</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-simple/" target="_blank">Color zones</a>
*/
@property(nonatomic, readwrite) NSMutableArray *zones;
/**
* description: For some series, there is a limit that shuts down initial animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation doesn't run if there is more than 250 points totally. To disable this cap, set <code>animationLimit</code> to <code>Infinity</code>.
*/
@property(nonatomic, readwrite) NSNumber *animationLimit;
/**
* description: Whether to display this particular series or series type in the legend. The default value is <code>true</code> for standalone series, <code>false</code> for linked series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showinlegend/" target="_blank">One series in the legend, one hidden</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showInLegend;
/**
* description: <p>The main color or the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the  <code>options.colors</code> array.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the series color can be set with the <code>.highcharts-series</code>, <code>.highcharts-color-{n}</code>, <code>.highcharts-{type}-series</code> or <code>.highcharts-series-{n}</code> class, or individual classes given by the <code>className</code> option.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-general/" target="_blank">General plot option</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-specific/" target="_blank">one specific series</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-area/" target="_blank">area color</a>
*/
@property(nonatomic, readwrite) HexColor *color;
/**
* description: When a series contains a data array that is longer than this, only one dimensional arrays of numbers, or two dimensional arrays with x and y values are allowed. Also, only the first point is tested, and the rest are assumed to be the same format. This saves expensive data checking and indexing in long series. Set it to <code>0</code> disable.
*/
@property(nonatomic, readwrite) NSNumber *turboThreshold;
/**
* description: When the series contains less points than the crop threshold, all points are drawn,  even if the points fall outside the visible plot area at the current zoom. The advantage of drawing all points (including markers and columns), is that animation is performed on updates. On the other hand, when the series contains more points than the crop threshold, the series data is cropped to only contain points that fall within the plot area. The advantage of cropping away invisible points is to increase performance on large series.
*/
@property(nonatomic, readwrite) NSNumber *cropThreshold;
/**
* description: A name for the dash style to use for the graph. Applies only to series type having a graph, like <code>line</code>, <code>spline</code>, <code>area</code> and <code>scatter</code> in  case it has a <code>lineWidth</code>. The value for the <code>dashStyle</code> include:
		    <ul>
		    	<li>Solid</li>
		    	<li>ShortDash</li>
		    	<li>ShortDot</li>
		    	<li>ShortDashDot</li>
		    	<li>ShortDashDotDot</li>
		    	<li>Dot</li>
		    	<li>Dash</li>
		    	<li>LongDash</li>
		    	<li>DashDot</li>
		    	<li>LongDashDot</li>
		    	<li>LongDashDotDot</li>
		    </ul>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-dashstyle-all/" target="_blank">Possible values demonstrated</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-dashstyle/" target="_blank">chart suitable for printing in black and white</a>
* accepted values: ["Solid", "ShortDash", "ShortDot", "ShortDashDot", "ShortDashDotDot", "Dot", "Dash" ,"LongDash", "DashDot", "LongDashDot", "LongDashDotDot"]
*/
@property(nonatomic, readwrite) NSString *dashStyle;
/**
* description: The color for the parts of the graph or points that are below the <a href="#plotOptions.series.threshold">threshold</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-negative-color/" target="_blank">Spline, area and column</a> - <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/arearange-negativecolor/" target="_blank">arearange</a>.
*/
@property(nonatomic, readwrite) HexColor *negativeColor;
/**
* description: <p>Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see <a href="#chart.animation">chart.animation</a> and the animation parameter under the API methods.		The following properties are supported:</p>
<dl>
  <dt>duration</dt>
  <dd>The duration of the animation in milliseconds.</dd>
<dt>easing</dt>
<dd>A string reference to an easing function set on the <code>Math</code> object. See <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-easing/">the easing demo</a>.</dd>
</dl>
<p>
Due to poor performance, animation is disabled in old IE browsers for column charts and polar charts.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-disabled/" target="_blank">Animation disabled</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-slower/" target="_blank">slower animation</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-easing/" target="_blank">custom easing function</a>.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *animation;
/**
* description: <p><i>Requires Accessibility module</i></p>
<p>A description of the series to add to the screen reader information about the series.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/stock/accessibility/accessible-stock/">Accessible stock chart</a>
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: You can set the cursor to "pointer" if you have click events attached to  the series, to signal to the user that the points and lines can be clicked.
* demo: Pointer cursor <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-line/" target="_blank">on line graph</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-column/" target="_blank">on columns</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-scatter/" target="_blank">on scatter markers</a>
* accepted values: [null, "default", "none", "help", "pointer", "crosshair"]
*/
@property(nonatomic, readwrite) NSString *cursor;
/**
* description: The threshold, also called zero level or base level. For line type series this is only used in conjunction with <a href="#plotOptions.series.negativeColor">negativeColor</a>.
*/
@property(nonatomic, readwrite) NSNumber *threshold;
/**
* description: <p>Options for the series data labels, appearing next to each data point.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the data labels can be styled wtih the <code>.highcharts-data-label-box</code> and <code>.highcharts-data-label</code> class names (<a href=#http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/series-datalabels/">see example</a>).</p>
*/
@property(nonatomic, readwrite) ScatterDataLabels *dataLabels;
/**
* description: Allow this series' points to be selected by clicking on the markers, bars or pie slices.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-line/" target="_blank">Line</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-column/" target="_blank">column</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-pie/" target="_blank">pie</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowPointSelect;
/**
* description: A class name to apply to the series' graphical elements.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: A configuration object for the tooltip rendering of each single series. Properties are inherited from <a href="#tooltip">tooltip</a>, but only the following properties can be defined on a series level.
*/
@property(nonatomic, readwrite) ScatterTooltip *tooltip;
/**
* description: Defines the Axis on which the zones are applied.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-zoneaxis-x/" target="_blank">Zones on the X-Axis</a>
*/
@property(nonatomic, readwrite) NSString *zoneAxis;
/**
* description: Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *getExtremesFromAll;
/**
* description: If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the <code>selected</code> option.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showcheckbox-true/" target="_blank">Show select box</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showCheckbox;
/**
* description: Whether to select the series initially. If <code>showCheckbox</code> is true, the checkbox next to the series name will be checked for a selected series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-selected/" target="_blank">One out of two series selected</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: <p>When this is true, the series will not cause the Y axis to cross the zero plane (or <a href="#plotOptions.series.threshold">threshold</a> option) unless the data actually crosses the plane.</p>

<p>For example, if <code>softThreshold</code> is <code>false</code>, a series of 0, 1, 2, 3 will make the Y axis show negative values according to the <code>minPadding</code> option. If <code>softThreshold</code> is <code>true</code>, the Y axis starts at 0.</p>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *softThreshold;
@property(nonatomic, readwrite) ScatterEvents *events;
/**
* description: An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-keys/" target="_blank">An extended data array with keys</a>
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *keys;
/**
* description: The <a href="#series.id">id</a> of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/arearange-line/" target="_blank">Linked series</a>
*/
@property(nonatomic, readwrite) NSString *linkedTo;
/**
* description: Properties for each single point
*/
@property(nonatomic, readwrite) ScatterHIPoint *point;
/**
* description: Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-enablemousetracking-false/" target="_blank">No mouse tracking</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enableMouseTracking;
/**
* description: Sticky tracking of mouse events. When true, the <code>mouseOut</code> event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the <code>mouseOut</code> event on a series is triggered when the mouse leaves the area around the series' graph or markers. This also implies the tooltip. When <code>stickyTracking</code> is false and <code>tooltip.shared</code> is false, the  tooltip will be hidden when moving the mouse between series.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *stickyTracking;
/**
* description: The width of the line connecting the data points.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/scatter-linewidth-none/" target="_blank">0 by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/scatter-linewidth-1/" target="_blank">1px</a>
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing <code>color</code>, <code>offsetX</code>, <code>offsetY</code>, <code>opacity</code> and <code>width</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-shadow/" target="_blank">Shadow enabled</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *shadow;
/**
* description: On datetime series, this allows for setting the <a href="#plotOptions.series.pointInterval">pointInterval</a> to irregular time units, <code>day</code>, <code>month</code> and <code>year</code>. A day is usually the same as 24 hours, but pointIntervalUnit also takes the DST crossover into consideration when dealing with local time. Combine this option with <code>pointInterval</code> to draw weeks, quarters, 6 months, 10 years etc.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointintervalunit/" target="_blank">One point a month</a>
* accepted values: [null, "day", "month", "year"]
*/
@property(nonatomic, readwrite) NSString *pointIntervalUnit;
/**
* description: <p>If no x values are given for the points in a series, pointInterval defines
 the interval of the x values. For example, if a series contains one value
 every decade starting from year 0, set pointInterval to 10.</p>
<p>Since Highcharts 4.1, it can be combined with <code>pointIntervalUnit</code> to draw irregular intervals.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-pointstart-datetime/" target="_blank">Datetime X axis</a>
*/
@property(nonatomic, readwrite) NSNumber *pointInterval;

-(NSDictionary *)getParams;

@end
