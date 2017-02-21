#import "Series.h"
#import "FunnelDataLabels.h"
#import "FunnelTooltip.h"
#import "FunnelHIPoint.h"
#import "FunnelEvents.h"
#import "HexColor.h"


/**
* description: <p>A <code>funnel</code> series. If the <a href="#series<funnel>.type">type</a> option is not specified, it is inherited from <a href="#chart.type">chart.type</a>.</p>

<p>For options that apply to multiple series, it is recommended to add them to the <a href="#pointOptions.series">pointOptions.series</a> options structure. To apply to all series of this specific type, apply it to <a href="#plotOptions.funnel">plotOptions.funnel</a>.</p>
*/
@interface Funnel: Series

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
* description: Whether to apply a drop shadow to the graph line. Since 2.3 the shadow can be an object configuration containing <code>color</code>, <code>offsetX</code>, <code>offsetY</code>, <code>opacity</code> and <code>width</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-shadow/" target="_blank">Shadow enabled</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *shadow;
/**
* description: For some series, there is a limit that shuts down initial animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation doesn't run if there is more than 250 points totally. To disable this cap, set <code>animationLimit</code> to <code>Infinity</code>.
*/
@property(nonatomic, readwrite) NSNumber *animationLimit;
/**
* description: Allow this series' points to be selected by clicking on the markers, bars or pie slices.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-line/" target="_blank">Line</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-column/" target="_blank">column</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-allowpointselect-pie/" target="_blank">pie</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowPointSelect;
/**
* description: The thickness of a 3D pie. Requires <code>highcharts-3d.js</code>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/3d-pie/">Basic 3D pie chart</a>
*/
@property(nonatomic, readwrite) NSNumber *depth;
/**
* description: Sticky tracking of mouse events. When true, the <code>mouseOut</code> event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the <code>mouseOut</code> event on a series is triggered when the mouse leaves the area around the series' graph or markers. This also implies the tooltip. When <code>stickyTracking</code> is false and <code>tooltip.shared</code> is false, the  tooltip will be hidden when moving the mouse between series.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *stickyTracking;
/**
* description: A wrapper object for all the series options in specific states.
*/
@property(nonatomic, readwrite) NSMutableArray /*FunnelStates*/ *states;
/**
* description: The width of the neck, the lower part of the funnel. A number defines pixel width, a percentage string defines a percentage of the plot area width.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/funnel/" target="_blank">Funnel demo</a>
*/
@property(nonatomic, readwrite) NSString *neckWidth;
@property(nonatomic, readwrite) FunnelDataLabels *dataLabels;
/**
* description: Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *getExtremesFromAll;
/**
* description: Defines the Axis on which the zones are applied.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-zoneaxis-x/" target="_blank">Zones on the X-Axis</a>
*/
@property(nonatomic, readwrite) NSString *zoneAxis;
/**
* description: A class name to apply to the series' graphical elements.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: <p>An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the <code>zoneAxis</code> option.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the color zones are styled with the <code>.highcharts-zone-{n}</code> class, or custom classed from the <code>className</code> option (<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/color-zones/">view live demo</a>).</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-simple/" target="_blank">Color zones</a>
*/
@property(nonatomic, readwrite) NSMutableArray *zones;
/**
* description: The height of the neck, the lower part of the funnel. A number defines pixel width, a percentage string defines a percentage of the plot area height.
*/
@property(nonatomic, readwrite) NSString *neckHeight;
/**
* description: The <a href="#series.id">id</a> of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/arearange-line/" target="_blank">Linked series</a>
*/
@property(nonatomic, readwrite) NSString *linkedTo;
/**
* description: A series specific or series type specific color set to use instead of the global <a href="#colors">colors</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-monochrome/" target="_blank">Set default colors for all pies</a>
*/
@property(nonatomic, readwrite) NSMutableArray<HexColor *> *colors;
/**
* description: The center of the series. By default, it is centered in the middle of the plot area, so it fills the plot area height.
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *center;
/**
* description: Whether to display this particular series or series type in the legend. Since 2.1, pies are not shown in the legend by default.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-showinlegend/" target="_blank">One series in the legend, one hidden</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showInLegend;
/**
* description: A configuration object for the tooltip rendering of each single series. Properties are inherited from <a href="#tooltip">tooltip</a>, but only the following properties can be defined on a series level.
*/
@property(nonatomic, readwrite) FunnelTooltip *tooltip;
/**
* description: An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/data-keys/" target="_blank">An extended data array with keys</a>
*/
@property(nonatomic, readwrite) NSMutableArray<NSString *> *keys;
/**
* description: If a point is sliced, moved out from the center, how many pixels should  it be moved?.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-slicedoffset-20/" target="_blank">20px offset</a>
*/
@property(nonatomic, readwrite) NSNumber *slicedOffset;
/**
* description: You can set the cursor to "pointer" if you have click events attached to  the series, to signal to the user that the points and lines can be clicked.
* demo: Pointer cursor <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-line/" target="_blank">on line graph</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-column/" target="_blank">on columns</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-cursor-scatter/" target="_blank">on scatter markers</a>
* accepted values: [null, "default", "none", "help", "pointer", "crosshair"]
*/
@property(nonatomic, readwrite) NSString *cursor;
/**
* description: The height of the funnel or pyramid. If it is a number it defines the pixel height, if it is a percentage string it is the percentage of the plot area height.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/funnel/" target="_blank">Funnel demo</a>
*/
@property(nonatomic, readwrite) NSString *height;
/**
* description: Properties for each single point
*/
@property(nonatomic, readwrite) FunnelHIPoint *point;
/**
* description: A reversed funnel has the widest area down. A reversed funnel with no neck width and neck height is a pyramid.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *reversed;
/**
* description: <p><i>Requires Accessibility module</i></p>
<p>A description of the series to add to the screen reader information about the series.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/stock/accessibility/accessible-stock/">Accessible stock chart</a>
*/
@property(nonatomic, readwrite) NSString *definition;
@property(nonatomic, readwrite) FunnelEvents *events;
/**
* description: <p>The color of the border surrounding each slice. When <code>null</code>, the border takes the same color as the slice fill. This can be used together with a <code>borderWidth</code> to fill drawing gaps created by antialiazing artefacts in borderless pies.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the border stroke is given in the <code>.highcharts-point</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-bordercolor-black/" target="_blank">Black border</a>. 

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/pie-point/">Styled mode</a>.


*/
@property(nonatomic, readwrite) HexColor *borderColor;
/**
* description: Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-enablemousetracking-false/" target="_blank">No mouse tracking</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enableMouseTracking;
/**
* description: The minimum size for a pie in response to auto margins. The pie will try to shrink to make room for data labels in side the plot area, but only to this size.
*/
@property(nonatomic, readwrite) NSNumber *minSize;
/**
* description: <p>The width of the border surrounding each slice.</p>

<p>When setting the border width to 0, there may be small gaps between the slices due to SVG antialiasing artefacts. To work around this, keep the border width at 0.5 or 1, but set the <code>borderColor</code> to <code>null</code> instead.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the border stroke width is given in the <code>.highcharts-point</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-borderwidth/" target="_blank">3px border</a>.


<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/pie-point/">Styled mode</a>.
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: The width of the funnel compared to the width of the plot area, or the pixel width if it is a number.
*/
@property(nonatomic, readwrite) NSString *width;

-(NSDictionary *)getParams;

@end
