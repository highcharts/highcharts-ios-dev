/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsWindbarbTooltipDateTimeLabelFormats.h"


/**
* description: A configuration object for the tooltip rendering of each single series.
Properties are inherited from tooltip, but only the
following properties can be defined on a series level.
*/
@interface HIPlotOptionsWindbarbTooltip: HIChartsJSONSerializable

/**
* description: Split the tooltip into one label per series, with the header close
to the axis. This is recommended over shared tooltips
for charts with multiple line series, generally making them easier
to read.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/split/ : Split tooltip
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/split/ : Split tooltip
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/split/ : Split tooltip
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *split;
@property(nonatomic, readwrite) NSNumber *distance;
/**
* description: The number of milliseconds to wait until the tooltip is hidden when
mouse out from a point or chart.
* default: 500
*/
@property(nonatomic, readwrite) NSNumber *hideDelay;
/**
* description: How many decimals to show in each series' y value. This is overridable
in each series' tooltip options object. The default is to preserve
all decimals.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/valuedecimals/ : Set decimals, prefix and suffix for the value
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/valuedecimals/ : Set decimals, prefix and suffix for the value
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/tooltip/valuedecimals/ : Set decimals, prefix and suffix for the value
*/
@property(nonatomic, readwrite) NSNumber *valueDecimals;
/**
* description: A string to append to each series' y value. Overridable in each series'
tooltip options object.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/valuedecimals/ : Set decimals, prefix and suffix for the value
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/valuedecimals/ : Set decimals, prefix and suffix for the value
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/tooltip/valuedecimals/ : Set decimals, prefix and suffix for the value
*/
@property(nonatomic, readwrite) NSString *valueSuffix;
/**
* description: A string to prepend to each series' y value. Overridable in each
series' tooltip options object.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/valuedecimals/ : Set decimals, prefix and suffix for the value
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/valuedecimals/ : Set decimals, prefix and suffix for the value
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/tooltip/valuedecimals/ : Set decimals, prefix and suffix for the value
*/
@property(nonatomic, readwrite) NSString *valuePrefix;
/**
* description: Whether the tooltip should follow the finger as it moves on a touch
device. If this is true and chart.panning is
set,followTouchMove will take over one-finger touches, so the user
needs to use two fingers for zooming and panning.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *followTouchMove;
/**
* description: For series on a datetime axes, the date format in the tooltip's
header will by default be guessed based on the closest data points.
This member gives the default string representations used for
each unit. For an overview of the replacement codes, see dateFormat.
Defaults to:
{
    millisecond:"%A, %b %e, %H:%M:%S.%L",
    second:"%A, %b %e, %H:%M:%S",
    minute:"%A, %b %e, %H:%M",
    hour:"%A, %b %e, %H:%M",
    day:"%A, %b %e, %Y",
    week:"Week from %A, %b %e, %Y",
    month:"%B %Y",
    year:"%Y"
}
*/
@property(nonatomic, readwrite) HIPlotOptionsWindbarbTooltipDateTimeLabelFormats *dateTimeLabelFormats;
/**
* description: A string to append to the tooltip format.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/footerformat/ : A table for value alignment
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/tooltip/format/ : Format demo
* default: false
*/
@property(nonatomic, readwrite) NSString *footerFormat;
/**
* description: A callback function for formatting the HTML output for a single point
in the tooltip. Like the pointFormat string, but with more flexibility.
*/
@property(nonatomic, readwrite) NSString /* Function */ *pointFormatter;
/**
* description: The HTML of the tooltip header line. Variables are enclosed by
curly brackets. Available variables are point.key, series.name,
series.color and other members from the point and series
objects. The point.key variable contains the category name, x
value or datetime string depending on the type of axis. For datetime
axes, the point.key date format can be set using tooltip.xDateFormat.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/footerformat/ : A HTML table in the tooltip
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/footerformat/ : A HTML table in the tooltip
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/tooltip/format/ : Format demo
* default: <span style="font-size: 10px">{point.key}</span><br/>
*/
@property(nonatomic, readwrite) NSString *headerFormat;
/**
* description: The default point format for the wind barb tooltip. Note the 
point.beaufort property that refers to the Beaufort wind scale. The
names can be internationalized by modifying
Highcharts.seriesTypes.windbarb.prototype.beaufortNames.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/pointformat/ : A different point format with value suffix
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/tooltip/format/ : Format demo
* default: <b>{series.name}</b>: {point.value} ({point.beaufort})<br/>
*/
@property(nonatomic, readwrite) NSString *pointFormat;
/**
* description: The format for the date in the tooltip header if the X axis is a
datetime axis. The default is a best guess based on the smallest
distance between points in the chart.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/xdateformat/ : A different format
*/
@property(nonatomic, readwrite) NSString *xDateFormat;
/**
* description: Padding inside the tooltip, in pixels.
* default: 8
*/
@property(nonatomic, readwrite) NSNumber *padding;
/**
* description: Whether the tooltip should follow the mouse as it moves across columns,
pie slices and other point types with an extent. By default it behaves
this way for scatter, bubble and pie series by override in the plotOptions
for those series types.
For touch moves to behave the same way, followTouchMove must be true also.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *followPointer;

-(NSDictionary *)getParams;

@end