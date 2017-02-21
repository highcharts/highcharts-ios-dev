#import "HIChartsJSONSerializable.h"


@interface TreemapTooltip: HIChartsJSONSerializable

/**
* description: Whether the tooltip should follow the finger as it moves on a touch device. If this is <code>true</code> and <a href="#chart.panning">chart.panning</a> is set,<code>followTouchMove</code> will take over one-finger touches, so the user needs to use two fingers for zooming and panning.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *followTouchMove;
/**
* description: The HTML of the point's line in the tooltip. Variables are enclosed by curly brackets. Available variables are point.x, point.y, series.name and series.color and other properties on the same form. Furthermore, point.y can be extended by the tooltip.yPrefix and tooltip.ySuffix variables. This can also be overridden for each series, which makes it a good hook for displaying units.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/tooltip/pointformat/" target="_blank">A different point format with value suffix</a>
*/
@property(nonatomic, readwrite) NSString *pointFormat;
/**
* description: How many decimals to show in each series' y value. This is overridable in each series' tooltip options object. The default is to preserve all decimals.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/tooltip/valuedecimals/" target="_blank">Set decimals, prefix and suffix for the value</a>
*/
@property(nonatomic, readwrite) NSNumber *valueDecimals;
/**
* description: Padding inside the tooltip, in pixels.
*/
@property(nonatomic, readwrite) NSNumber *padding;
/**
* description: Split the tooltip into one label per series, with the header close to the axis. This is recommended over <a href="#tooltip.shared">shared</a> tooltips for charts with multiple line series, generally making them easier to read.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/tooltip/split/" target="_blank">Split tooltip</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *split;
/**
* description: <p>Whether the tooltip should follow the mouse as it moves across columns, pie slices and other point types with an extent. By default it behaves this way for scatter, bubble and pie series by override in the <code>plotOptions</code> for those series types. </p>
<p>For touch moves to behave the same way, <a href="#tooltip.followTouchMove">followTouchMove</a> must be <code>true</code> also.</p>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *followPointer;
/**
* description: A string to append to each series' y value. Overridable in each series' tooltip options object.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/tooltip/valuedecimals/" target="_blank">Set decimals, prefix and suffix for the value</a>
*/
@property(nonatomic, readwrite) NSString *valueSuffix;
/**
* description: A callback function for formatting the HTML output for a single point in the tooltip. Like the <code>pointFormat</code> string, but with more flexibility.
*/
@property(nonatomic, readwrite) NSString /* Function? */ *pointFormatter;
/**
* description: The format for the date in the tooltip header if the X axis is a datetime axis. The default is a best guess based on the smallest distance between points in the chart.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/tooltip/xdateformat/" target="_blank">A different format</a>
*/
@property(nonatomic, readwrite) NSString *xDateFormat;
/**
* description: A string to append to the tooltip format.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/tooltip/footerformat/" target="_blank">A table for value alignment</a>
*/
@property(nonatomic, readwrite) NSString *footerFormat;
/**
* description: A string to prepend to each series' y value. Overridable in each series' tooltip options object.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/tooltip/valuedecimals/" target="_blank">Set decimals, prefix and suffix for the value</a>
*/
@property(nonatomic, readwrite) NSString *valuePrefix;
/**
* description: The number of milliseconds to wait until the tooltip is hidden when mouse out from a point or chart. 
*/
@property(nonatomic, readwrite) NSNumber *hideDelay;
/**
* description: The HTML of the tooltip header line. Variables are enclosed by curly brackets. Available variables	are point.key, series.name, series.color and other members from the point and series objects. The point.key variable contains the category name, x value or datetime string depending on the type of axis. For datetime axes, the point.key date format can be set using tooltip.xDateFormat.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/tooltip/footerformat/" target="_blank">A HTML table in the tooltip</a>
*/
@property(nonatomic, readwrite) NSString *headerFormat;
/**
* description: <p>For series on a datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the replacement codes, see <a href="#Highcharts.dateFormat">dateFormat</a>.</p>

<p>Defaults to:
<pre>{
    millisecond:"%A, %b %e, %H:%M:%S.%L",
    second:"%A, %b %e, %H:%M:%S",
    minute:"%A, %b %e, %H:%M",
    hour:"%A, %b %e, %H:%M",
    day:"%A, %b %e, %Y",
    week:"Week from %A, %b %e, %Y",
    month:"%B %Y",
    year:"%Y"
}</pre>
</p>
*/
@property(nonatomic, readwrite) id dateTimeLabelFormats;

-(NSDictionary *)getParams;

@end
