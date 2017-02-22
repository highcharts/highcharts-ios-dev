#import "HIChartOptions3d.h"
#import "HIChartEvents.h"
#import "HIChartResetZoomButton.h"
#import "HIHexColor.h"


/**
* description: Options regarding the chart area and plot area as well as general chart options.
*/
@interface HIChart: HIChartsJSONSerializable

/**
* description: The pixel width of the outer chart border.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/borderwidth/" target="_blank">5px border</a>
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: Alias of <code>type</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/defaultseriestype/" target="_blank">Bar</a>
* accepted values: ["line", "spline", "column", "area", "areaspline", "pie"]
*/
@property(nonatomic, readwrite) NSString *defaultSeriesType;
/**
* description: Options to render charts in 3 dimensions. This feature requires <code>highcharts-3d.js</code>, found in the download package or online at <a href="http://code.highcharts.com/highcharts-3d.js">code.highcharts.com/highcharts-3d.js</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/column/">Basic 3D columns</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/3d-pie/">basic 3D pie</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/scatter/">basic 3D scatter chart</a>.
*/
@property(nonatomic, readwrite) HIChartOptions3d *options3d;
/**
* description: <p>A text description of the chart type.</p> 
<p>If the Accessibility module is loaded, this will be included in the description of the chart in the screen reader information region.</p>
<p>Highcharts will by default attempt to guess the chart type, but for more complex charts it is recommended to specify this property for clarity.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/accessibility/advanced-accessible/">Accessible complex chart</a>
*/
@property(nonatomic, readwrite) NSString *typeDescription;
/**
* description: <p>Set the overall animation for all chart updating. Animation can be disabled throughout
 the chart by setting it to false here. It can be overridden for each individual
 API method as a function parameter. The only animation not affected by this option is the 
 initial series animation, see <a class="internal" href="#plotOptions.series.animation">plotOptions.series.animation</a>.</p>
 
 <p>The animation can either be set as a boolean or a configuration object. If <code>true</code>,
 it will use the 'swing' jQuery easing and a duration of 500 ms. If used as a configuration object,
 the following properties are supported: 
 </p><dl>
 	<dt>duration</dt>
 	<dd>The duration of the animation in milliseconds.</dd>
 	
 	<dt>easing</dt>
 	<dd>A string reference to an easing function set on the <code>Math</code> object. See <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-easing/">the easing demo</a>.</dd>
 </dl>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/animation-none/" target="_blank">Updating with no animation</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/animation-duration/" target="_blank">with a longer duration</a>,  
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/animation-easing/" target="_blank">with a jQuery UI easing</a>.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *animation;
/**
* description: The URL for an image to use as the plot background. To set an image as the background for the entire chart, set a CSS background image to the container element. Note that for the image to be applied to exported charts, its URL needs to be accessible by the export server.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/plotbackgroundimage/" target="_blank">Skies</a>
*/
@property(nonatomic, readwrite) NSString *plotBackgroundImage;
/**
* description: The corner radius of the outer chart border.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/borderradius/" target="_blank">20px radius</a>
*/
@property(nonatomic, readwrite) NSNumber *borderRadius;
/**
* description: <p>The margin between the outer edge of the chart and the plot area. The numbers in the array designate top, right, bottom and left respectively. Use the options <code>marginTop</code>, <code>marginRight</code>, <code>marginBottom</code> and <code>marginLeft</code> for shorthand setting of one option.</p> <p>Since version 2.1, the margin is 0 by default. The actual space is dynamically calculated  from the offset of axis labels, axis title, title, subtitle and legend in addition to the <code>spacingTop</code>, <code>spacingRight</code>, <code>spacingBottom</code> and <code>spacingLeft</code> options.</p>
		 Defaults to <code>[null]</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/margins-zero/" target="_blank">Zero margins</a>
*/
@property(nonatomic, readwrite) NSMutableArray *margin;
/**
* description: The pixel width of the plot area border.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/plotborderwidth/" target="_blank">1px border</a>
*/
@property(nonatomic, readwrite) NSNumber *plotBorderWidth;
/**
* description: The margin between the left outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also <code>spacingLeft</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/marginleft/" target="_blank">150px left margin</a>
*/
@property(nonatomic, readwrite) NSNumber *marginLeft;
/**
* description: Allows setting a key to switch between zooming and panning. Can be one of <code>alt</code>, <code>ctrl</code>, <code>meta</code> (the command key on Mac and Windows key on Windows) or <code>shift</code>. The keys are mapped directly to the key properties of the click event argument (<code>event.altKey</code>, <code>event.ctrlKey</code>, <code>event.metaKey</code> and <code>event.shiftKey</code>).
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/pankey/" target="_blank">Hold down <em>shift</em> to pan</a>
* accepted values: [null, "alt", "ctrl", "meta", "shift"]
*/
@property(nonatomic, readwrite) NSString *panKey;
/**
* description: An explicit width for the chart. By default (when <code>null</code>) the width is calculated from the offset width of the containing element.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/width/" target="_blank">800px wide</a>
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: Event listeners for the chart.
*/
@property(nonatomic, readwrite) HIChartEvents *events;
/**
* description: Whether to show the axes initially. This only applies to empty charts where series are added dynamically, as axes are automatically added to cartesian series.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/showaxes-false/" target="_blank">False by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/showaxes-true/" target="_blank">true</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *showAxes;
/**
* description: Whether to apply a drop shadow to the outer chart area. Requires that  backgroundColor be set. Since 2.3 the shadow can be an object configuration containing <code>color</code>, <code>offsetX</code>, <code>offsetY</code>, <code>opacity</code> and <code>width</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/shadow/" target="_blank">Shadow</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *shadow;
/**
* description: The background color or gradient for the plot area.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/plotbackgroundcolor-color/" target="_blank">Color</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/plotbackgroundcolor-gradient/" target="_blank">gradient</a>
*/
@property(nonatomic, readwrite) HIHexColor *plotBackgroundColor;
/**
* description: The color of the inner chart or plot area border.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/plotbordercolor/" target="_blank">Blue border</a>
*/
@property(nonatomic, readwrite) HIHexColor *plotBorderColor;
/**
* description: <p>Allow panning in a chart. Best used with <a href="#chart.panKey">panKey</a> to combine zooming and panning.</p>

<p>On touch devices, when the <a href="#tooltip.followTouchMove">tooltip.followTouchMove</a> option is <code>true</code> (default), panning requires two fingers. To allow panning with one finger, set <code>followTouchMove</code> to <code>false</code>.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/pankey/" target="_blank">Zooming and panning</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *panning;
/**
* description: The background color or gradient for the outer chart area.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/backgroundcolor-color/" target="_blank">Color</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/backgroundcolor-gradient/" target="_blank">gradient</a>
*/
@property(nonatomic, readwrite) HIHexColor *backgroundColor;
/**
* description: <p>A text description of the chart.</p>

<p>If the Accessibility module is loaded, this is included by default as a long description of the chart and its contents in the hidden screen reader information region.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/accessibility/accessible-line/">Accessible line chart</a>
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: <p>The HTML element where the chart will be rendered. If it is a string, the element by that id is used. The HTML element can also be passed by direct reference.</p>

<p>When using the <a href="#Highcharts.chart">Highcharts.chart</a> constructor, the <code>renderTo</code> is given as a parameter, and can be skipped in the options set.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/reflow-true/" target="_blank">String</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/renderto-object/" target="_blank">object reference</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/renderto-jquery/" target="_blank">object reference through jQuery</a>,
*/
@property(nonatomic, readwrite) NSString *renderTo;
/**
* description: <p>Whether to invert the axes so that the x axis is vertical and y axis is horizontal. When true, the x axis is <a href="#xAxis.reversed">reversed</a> by default. If a bar series is present in the chart, it will be inverted automatically.</p>

<p>Inverting the chart doesn't have an effect if there are no cartesian series in the chart, or if the chart is <a href="#chart.polar">polar</a>.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/inverted/" target="_blank">Inverted line</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *inverted;
/**
* description: When true, cartesian charts like line, spline, area and column are transformed into the polar coordinate system. Requires <code>highcharts-more.js</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/polar-line/">Polar line</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/polar-area/">polar area</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/polar-column/">polar column</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/polar/">combined series types</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/polar-spider/">spider chart</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/polar-wind-rose/">wind rose</a>.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *polar;
/**
* description: Equivalent to <a href="#chart.zoomType">zoomType</a>, but for multitouch gestures only. By default, the <code>pinchType</code> is the same as the <code>zoomType</code> setting. However, pinching can be enabled separately in some cases, for example in stock charts where a mouse drag pans the chart, while pinching is enabled. When <a href="#tooltip.followTouchMove">tooltip.followTouchMove</a> is true, pinchType only applies to two-finger touches.
* accepted values: ["x", "y", "xy"]
*/
@property(nonatomic, readwrite) NSString *pinchType;
/**
* description: The margin between the bottom outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also <code>spacingBottom</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/marginbottom/" target="_blank">100px bottom margin</a>
*/
@property(nonatomic, readwrite) NSNumber *marginBottom;
/**
* description: The margin between the right outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also <code>spacingRight</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/marginright/" target="_blank">100px right margin</a>
*/
@property(nonatomic, readwrite) NSNumber *marginRight;
/**
* description: In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, this sets how many colors the class names should rotate between. With ten colors, series (or points) are given class names like <code>highcharts-color-0</code>, <code>highcharts-color-0</code> [...] <code>highcharts-color-9</code>. The equivalent in non-styled mode is to set colors using the <a href="#colors">colors</a> setting.
*/
@property(nonatomic, readwrite) NSNumber *colorCount;
/**
* description: The distance between the outer edge of the chart and the content, like title, legend, axis title or labels. The numbers in the array designate top, right, bottom and left respectively. Use the options spacingTop, spacingRight, spacingBottom and spacingLeft options for shorthand setting of one option.
*/
@property(nonatomic, readwrite) NSMutableArray<NSNumber *> *spacing;
/**
* description: The color of the outer chart border.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/bordercolor/" target="_blank">Brown border</a>
*/
@property(nonatomic, readwrite) HIHexColor *borderColor;
/**
* description: <p>When using multiple axis, the ticks of two or more opposite axes will  automatically be aligned by adding ticks to the axis or axes with the least ticks, as if <code>tickAmount</code> were specified.</p>

<p>This can be prevented by setting <code>alignTicks</code> to false. If the grid lines look messy, it's a good idea to hide them for the secondary axis by setting <code>gridLineWidth</code> to 0.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/alignticks-true/" target="_blank">True by default</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/alignticks-false/" target="_blank">false</a>.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *alignTicks;
/**
* description: An explicit height for the chart. By default (when <code>null</code>) the height is calculated from the offset height of the containing element, or 400 pixels if the containing element's height is 0.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/height/" target="_blank">500px height</a>
*/
@property(nonatomic, readwrite) NSNumber *height;
/**
* description: Whether to reflow the chart to fit the width of the container div on resizing the window.
* demo: Move the bar between the JavaScript frame and the Preview frame to see the effect: 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/reflow-true/" target="_blank">True by default</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/reflow-false/" target="_blank">false</a>.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *reflow;
/**
* description: If true, the axes will scale to the remaining visible series once one series is hidden. If false, hiding and showing a series will not affect the axes or the other series. For stacks, once one series within the stack is hidden, the rest of the stack will close in around it even if the axis is not affected.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/ignorehiddenseries-true/" target="_blank">True by default</a>
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/ignorehiddenseries-false/" target="_blank">false</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/ignorehiddenseries-true-stacked/" target="_blank">true with stack</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *ignoreHiddenSeries;
/**
* description: The default series type for the chart. Can be any of the chart types listed under <a href="#plotOptions">plotOptions</a>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/type-bar/" target="_blank">Bar</a>
* accepted values: ["line", "spline", "column", "bar", "area", "areaspline", "pie", "arearange", "areasplinerange", "boxplot", "bubble", "columnrange", "errorbar", "funnel", "gauge", "heatmap", "polygon", "pyramid", "scatter", "solidgauge", "treemap", "waterfall"]
*/
@property(nonatomic, readwrite) NSString *type;
/**
* description: <p>The space between the top edge of the chart and the content (plot area, axis title and labels, title, subtitle or 
 legend in top position).</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/spacingtop-100/" target="_blank">A top spacing of 100</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/spacingtop-10/" target="_blank">floating chart title makes the plot area align to the 
			default spacingTop of 10.</a>.
*/
@property(nonatomic, readwrite) NSNumber *spacingTop;
/**
* description: <p>The space between the bottom edge of the chart and the content (plot area, axis title and labels, title, subtitle or  legend in top position).</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/spacingbottom/" target="_blank">Spacing bottom set to 100</a>.
*/
@property(nonatomic, readwrite) NSNumber *spacingBottom;
/**
* description: <p>The space between the right edge of the chart and the content (plot area, axis title and labels, title, subtitle or  legend in top position).</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/spacingright-100/" target="_blank">Spacing set to 100</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/spacingright-legend/" target="_blank">legend in right position with default spacing</a>
*/
@property(nonatomic, readwrite) NSNumber *spacingRight;
/**
* description: The margin between the top outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also <code>spacingTop</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/margintop/" target="_blank">100px top margin</a>
*/
@property(nonatomic, readwrite) NSNumber *marginTop;
/**
* description: A CSS class name to apply to the charts container <code>div</code>, allowing unique CSS styling for each chart.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: <p>The space between the left edge of the chart and the content (plot area, axis title and labels, title, subtitle or  legend in top position).</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/spacingleft/" target="_blank">Spacing left set to 100</a>
*/
@property(nonatomic, readwrite) NSNumber *spacingLeft;
/**
* description: Whether to apply a drop shadow to the plot area. Requires that plotBackgroundColor be set. Since 2.3 the shadow can be an object configuration containing <code>color</code>, <code>offsetX</code>, <code>offsetY</code>, <code>opacity</code> and <code>width</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/plotshadow/" target="_blank">Plot shadow</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *plotShadow;
/**
* description: Decides in what dimensions the user can zoom by dragging the mouse. Can be one of <code>x</code>, <code>y</code> or <code>xy</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/zoomtype-none/" target="_blank">None by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/zoomtype-x/" target="_blank">x</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/zoomtype-y/" target="_blank">y</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/zoomtype-xy/" target="_blank">xy</a>
* accepted values: [null, "x", "y", "xy"]
*/
@property(nonatomic, readwrite) NSString *zoomType;
/**
* description: The button that appears after a selection zoom, allowing the user to reset zoom.
*/
@property(nonatomic, readwrite) HIChartResetZoomButton *resetZoomButton;
/**
* description: The background color of the marker square when selecting (zooming in on) an area of the chart.
*/
@property(nonatomic, readwrite) HIHexColor *selectionMarkerFill;
/**
* description: Additional CSS styles to apply inline to the container <code>div</code>. Note that since the default font styles are applied in the renderer, it is ignorant of the individual chart  options and must be set globally.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/style-serif-font/" target="_blank">Using a serif type font</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/em/" target="_blank">Styled mode with relative font sizes</a>.

*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;

-(NSDictionary *)getParams;

@end
