#import "PlotOptionsGaugeEvents.h"
#import "PlotOptionsGaugeTooltip.h"
#import "PlotOptionsGaugeDial.h"
#import "PlotOptionsGaugeDataLabels.h"
#import "PlotOptionsGaugePivot.h"
#import "PlotOptionsGaugeHIPoint.h"
#import "HexColor.h"


/**
* description: General plotting options for the gauge series type. Requires <code>highcharts-more.js</code>
*/
@interface PlotOptionsGauge: HIChartsJSONSerializable

/**
* description: An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-keys/" target="_blank">An extended data array with keys</a>
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *keys;
@property(nonatomic, readwrite) PlotOptionsGaugeEvents *events;
/**
* description: Whether to select the series initially. If <code>showCheckbox</code> is true, the checkbox next to the series name will be checked for a selected series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-selected/" target="_blank">One out of two series selected</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: Set the initial visibility of the series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-visible/" target="_blank">Two series, one hidden and one visible</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *visible;
/**
* description: Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *getExtremesFromAll;
/**
* description: Sticky tracking of mouse events. When true, the <code>mouseOut</code> event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the <code>mouseOut</code> event on a series is triggered when the mouse leaves the area around the series' graph or markers. This also implies the tooltip. When <code>stickyTracking</code> is false and <code>tooltip.shared</code> is false, the  tooltip will be hidden when moving the mouse between series. Defaults to true for line and area type series, but to false for columns, pies etc.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-true/" target="_blank">True by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-stickytracking-false/" target="_blank">false</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *stickyTracking;
/**
* description: A configuration object for the tooltip rendering of each single series. Properties are inherited from <a href="#tooltip">tooltip</a>, but only the following properties can be defined on a series level.
*/
@property(nonatomic, readwrite) PlotOptionsGaugeTooltip *tooltip;
/**
* description: The threshold, also called zero level or base level. For line type series this is only used in conjunction with <a href="#plotOptions.series.negativeColor">negativeColor</a>.
*/
@property(nonatomic, readwrite) NSNumber *threshold;
/**
* description: <p>Options for the dial or arrow pointer of the gauge.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the dial is styled with the <code>.highcharts-gauge-series .highcharts-dial</code> rule.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/gauge/" target="_blank">Styled mode</a>.
*/
@property(nonatomic, readwrite) PlotOptionsGaugeDial *dial;
/**
* description: <p><i>Requires Accessibility module</i></p>
<p>A description of the series to add to the screen reader information about the series.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/stock/accessibility/accessible-stock/">Accessible stock chart</a>
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the <code>selected</code> option.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showcheckbox-true/" target="_blank">Show select box</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showCheckbox;
/**
* description: The color for the parts of the graph or points that are below the <a href="#plotOptions.series.threshold">threshold</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-negative-color/" target="_blank">Spline, area and column</a> - <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/arearange-negativecolor/" target="_blank">arearange</a>.
*/
@property(nonatomic, readwrite) HexColor *negativeColor;
/**
* description: Data labels for the gauge. For gauges, the data labels are enabled by default and shown in a bordered box below the point.
*/
@property(nonatomic, readwrite) PlotOptionsGaugeDataLabels *dataLabels;
/**
* description: A class name to apply to the series' graphical elements.
*/
@property(nonatomic, readwrite) NSString *className;
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
* description: Allow the dial to overshoot the end of the perimeter axis by this many degrees. Say if the gauge axis goes from 0 to 60, a value of 100, or 1000, will show 5 degrees beyond the end of the axis.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/gauge-overshoot/" target="_blank">Allow 5 degrees overshoot</a>
*/
@property(nonatomic, readwrite) NSNumber *overshoot;
/**
* description: You can set the cursor to "pointer" if you have click events attached to  the series, to signal to the user that the points and lines can be clicked.
* demo: Pointer cursor <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-line/" target="_blank">on line graph</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-column/" target="_blank">on columns</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-scatter/" target="_blank">on scatter markers</a>
* accepted values: [null, "default", "none", "help", "pointer", "crosshair"]
*/
@property(nonatomic, readwrite) NSString *cursor;
/**
* description: <p>The main color or the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the  <code>options.colors</code> array.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the series color can be set with the <code>.highcharts-series</code>, <code>.highcharts-color-{n}</code>, <code>.highcharts-{type}-series</code> or <code>.highcharts-series-{n}</code> class, or individual classes given by the <code>className</code> option.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-general/" target="_blank">General plot option</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-specific/" target="_blank">one specific series</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-color-area/" target="_blank">area color</a>
*/
@property(nonatomic, readwrite) HexColor *color;
/**
* description: The <a href="#series.id">id</a> of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/arearange-line/" target="_blank">Linked series</a>
*/
@property(nonatomic, readwrite) NSString *linkedTo;
/**
* description: For some series, there is a limit that shuts down initial animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation doesn't run if there is more than 250 points totally. To disable this cap, set <code>animationLimit</code> to <code>Infinity</code>.
*/
@property(nonatomic, readwrite) NSNumber *animationLimit;
/**
* description: When this option is <code>true</code>, the dial will wrap around the axes. For instance, in a full-range gauge going from 0 to 360, a value of 400 will point to 40. When <code>wrap</code> is <code>false</code>, the dial stops at 360.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *wrap;
/**
* description: <p>Options for the pivot or the center point of the gauge.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the pivot is styled with the <code>.highcharts-gauge-series .highcharts-pivot</code> rule.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/gauge/" target="_blank">Styled mode</a>.



*/
@property(nonatomic, readwrite) PlotOptionsGaugePivot *pivot;
/**
* description: Whether to display this particular series or series type in the legend. Defaults to false for gauge series.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showInLegend;
/**
* description: Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-enablemousetracking-false/" target="_blank">No mouse tracking</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enableMouseTracking;
/**
* description: Properties for each single point
*/
@property(nonatomic, readwrite) PlotOptionsGaugeHIPoint *point;

-(NSDictionary *)getParams;

@end
