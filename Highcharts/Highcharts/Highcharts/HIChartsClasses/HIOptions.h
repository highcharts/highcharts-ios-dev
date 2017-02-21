#import "HexColor.h"
#import "Series.h"
#import "Data.h"
#import "YAxis.h"
#import "Legend.h"
#import "Pane.h"
#import "Title.h"
#import "Credits.h"
#import "Accessibility.h"
#import "NoData.h"
#import "PlotOptions.h"
#import "Subtitle.h"
#import "Tooltip.h"
#import "Responsive.h"
#import "XAxis.h"
#import "ZAxis.h"
#import "Exporting.h"
#import "Labels.h"
#import "Navigation.h"
#import "Loading.h"
#import "Chart.h"
#import "Drilldown.h"


@interface HIOptions: NSObject

/**
* description: The actual series to append to the chart. In addition to 
	the members listed below, any member of the <code>plotOptions</code> for that specific
	type of plot can be added to a series individually. For example, even though a general
	<code>lineWidth</code> is specified in <code>plotOptions.series</code>, an individual
	<code>lineWidth</code> can be specified for each series.
*/
@property(nonatomic, readwrite) NSMutableArray<Series *> *series;

/**
* description: <p>The Data module provides a simplified interface for adding data to a chart from sources like CVS, HTML tables or grid views. See also the <a href="http://www.highcharts.com/docs/working-with-data/data-module">tutorial article on the Data module</a>.</p>

<p>It requires the <code>modules/data.js</code> file to be loaded.</p>

<p>Please note that the default way of adding data in Highcharts, without the need of a module, is through the <a href="#series.data">series.data</a> option.</p>
* demo: Data from a <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/column-parsed/" target="_blank">HTML table</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/data/csv/" target="_blank">CSV</a>.
*/
@property(nonatomic, readwrite) Data *data;

/**
* description: <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">Styled mode</a> only. Configuration object for adding SVG definitions for reusable elements. See <a href="http://www.highcharts.com/docs/chart-design-and-style/gradients-shadows-and-patterns">gradients, shadows and patterns</a> for more information and code examples.
*/
@property(nonatomic, readwrite) id defs;

/**
* description: <p>The Y axis or value axis. Normally this is the vertical axis, though if the 
	chart is inverted this is the horizontal axis. In case of multiple axes, the yAxis
	node is an array of configuration objects.</p>
	<p>See <a class="internal" href="#Axis">the Axis object</a> for programmatic
	access to the axis.</p>
*/
@property(nonatomic, readwrite) NSMutableArray<YAxis *> *yAxis;

/**
* description: <p>The legend is a box containing a symbol and name for each series item or point item in the chart. Each series (or points in case of pie charts) is represented by a symbol and its name in the legend.</p>

<p>It is also possible to override the symbol creator function and create <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/studies/legend-custom-symbol/">custom legend symbols</a>.</p>
*/
@property(nonatomic, readwrite) Legend *legend;

/**
* description: Applies only to polar charts and angular gauges. This configuration object holds general options for the combined X and Y axes set. Each xAxis or yAxis can reference the pane by index.
*/
@property(nonatomic, readwrite) Pane *pane;

/**
* description: The chart's main title.
*/
@property(nonatomic, readwrite) Title *title;

/**
* description: Highchart by default puts a credits label in the lower right corner of the chart.
		This can be changed using these options.
*/
@property(nonatomic, readwrite) Credits *credits;

/**
* description: <p>Options for configuring accessibility for the chart. Requires the <a href="//code.highcharts.com/modules/accessibility.js">accessibility module</a> to be loaded. For a description of the module and information on its features, see <a href="http://www.highcharts.com/docs/chart-concepts/accessibility">Highcharts Accessibility</a>.</p>
*/
@property(nonatomic, readwrite) Accessibility *accessibility;

/**
* description: Options for displaying a message like "No data to display". This feature requires the file <code>no-data-to-display.js</code> to be loaded in the page. The actual text to display is set in the <a href="#lang.noData">lang.noData</a> option.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/no-data-to-display/no-data-line/" target="_blank">Line series</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/no-data-to-display/no-data-pie/" target="_blank">pie series</a>.
*/
@property(nonatomic, readwrite) NoData *noData;

/**
* description: <p>The plotOptions is a wrapper object for config objects for each series type.
		The config objects for each series can also be overridden for each series 
		item as given in the series array.</p>
		<p>Configuration options for the series are given in three levels. Options
		for all series in a chart are given in the <a class="internal" href="#plotOptions.series">plotOptions.series</a> object. Then options for all series
		of a specific type are given in the plotOptions of that type, for example plotOptions.line.
		Next, options for one single series are given in <a class="internal" href="#series">the 
		series array</a>.</p>
*/
@property(nonatomic, readwrite) PlotOptions *plotOptions;

/**
* description: The chart's subtitle
*/
@property(nonatomic, readwrite) Subtitle *subtitle;

/**
* description: Options for the tooltip that appears when the user hovers over a series or point.
*/
@property(nonatomic, readwrite) Tooltip *tooltip;

/**
* description: Allows setting a set of rules to apply for different screen or chart sizes. Each rule specifies additional chart options.
* demo: Responsive <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/axis/" target="_blank">axis</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/legend/" target="_blank">legend</a> and <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/responsive/classname/" target="_blank">class name</a>.
*/
@property(nonatomic, readwrite) Responsive *responsive;

/**
* description: <p>The X axis or category axis. Normally this is the horizontal axis, though if the 
	chart is inverted this is the vertical axis. In case of multiple axes, the xAxis
	node is an array of configuration objects.</p>
	<p>See <a class="internal" href="#Axis">the Axis object</a> for programmatic
	access to the axis.</p>
*/
@property(nonatomic, readwrite) NSMutableArray<XAxis *> *xAxis;

/**
* description: <p>The Z axis or depth axis for 3D plots.</p>
	<p>See <a class="internal" href="#Axis">the Axis object</a> for programmatic
	access to the axis.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/scatter-zaxis-categories/" target="_blank">Z-Axis with Categories</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/3d/scatter-zaxis-grid/" target="_blank">Z-Axis with styling</a>
*/
@property(nonatomic, readwrite) ZAxis *zAxis;

/**
* description: Options for the exporting module. For an overview on the matter, see <a href="http://www.highcharts.com/docs/export-module/export-module-overview">the docs</a>.
*/
@property(nonatomic, readwrite) Exporting *exporting;

/**
* description: HTML labels that can be positioned anywhere in the chart area.
*/
@property(nonatomic, readwrite) Labels *labels;

/**
* description: <p>An array containing the default colors for the chart's series. When all colors are used, new colors are pulled from the start again. Defaults to:
<pre>colors: ['#7cb5ec', '#434348', '#90ed7d', '#f7a35c', '#8085e9', 
   '#f15c80', '#e4d354', '#2b908f', '#f45b5b', '#91e8e1']</pre>

Default colors can also be set on a series or series.type basis, see <a href="#plotOptions.column.colors">column.colors</a>, <a href="#plotOptions.pie.colors">pie.colors</a>.
</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the colors option doesn't exist. Instead, colors are defined in CSS and applied either through series or point class names, or through the <a href="#chart.colorCount">chart.colorCount</a> option.</p>

<h3>Legacy</h3>
<p>In Highcharts 3.x, the default colors were:
<pre>colors: ['#2f7ed8', '#0d233a', '#8bbc21', '#910000', '#1aadce', 
   '#492970', '#f28f43', '#77a1e5', '#c42525', '#a6c96a']</pre>
</p>

<p>In Highcharts 2.x, the default colors were:
<pre>colors: ['#4572A7', '#AA4643', '#89A54E', '#80699B', '#3D96AE', 
   '#DB843D', '#92A8CD', '#A47D7C', '#B5CA92']</pre></p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/colors/" target="_blank">Assign a global color theme</a>
*/
@property(nonatomic, readwrite) NSMutableArray<HexColor *> *colors;

/**
* description: A collection of options for buttons and menus appearing in the exporting module.
*/
@property(nonatomic, readwrite) Navigation *navigation;

/**
* description: The loading options control the appearance of the loading screen that covers the 
	plot area on chart operations. This screen only appears after an explicit call
	to <code>chart.showLoading()</code>. It is a utility for developers to communicate
	to the end user that something is going on, for example while retrieving new data
	via an XHR connection. The "Loading..." text itself is not part of this configuration
	object, but part of the <code>lang</code> object.
*/
@property(nonatomic, readwrite) Loading *loading;

/**
* description: Options regarding the chart area and plot area as well as general chart options.
*/
@property(nonatomic, readwrite) Chart *chart;

/**
* description: <p>Options for drill down, the concept of inspecting increasingly high resolution data through clicking on chart items like columns or pie slices.</p>

<p>The drilldown feature requires the <code>drilldown.js</code> file to be loaded, found in the <code>modules</code> directory of the download package, or online at <a href="http://code.highcharts.com/modules/drilldown.js">code.highcharts.com/modules/drilldown.js</a>.</p>


* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/basic/" target="_blank">Basic drilldown</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/multi-series/" target="_blank">multi series drilldown</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/column-drilldown/" target="_blank">generated column drilldown</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-drilldown/" target="_blank">pie drilldown</a>, <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/drilldown/across-types/" target="_blank">drilldown across series types</a>.
*/
@property(nonatomic, readwrite) Drilldown *drilldown;



-(NSDictionary *)getParams;


@end
