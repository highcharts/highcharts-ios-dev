/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HISeries.h"
#import "HIColor.h"


/**
* description: A bellcurve series. If the type option is not
specified, it is inherited from chart.type.

For options that apply to multiple series, it is recommended to add
them to the plotOptions.series options structure.
To apply to all series of this specific type, apply it to
plotOptions.bellcurve.
*/
@interface HIBellcurve: HISeries

/**
* description: This option allows to define the length of the bell curve. A unit of the
length of the bell curve is standard deviation.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/bellcurve-intervals-pointsininterval : Intervals and points in interval
*/
@property(nonatomic, readwrite) NSNumber *intervals;
/**
* description: Defines how many points should be plotted within 1 interval. See 
plotOptions.bellcurve.intervals.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/bellcurve-intervals-pointsininterval : Intervals and points in interval
*/
@property(nonatomic, readwrite) NSNumber *pointsInInterval;
/**
* description: A separate color for the negative part of the area.

In styled mode, a negative color is set with the .highcharts-negative
class name.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/series-negative-color/ : Negative color in styled mode
*/
@property(nonatomic, readwrite) HIColor *negativeFillColor;
/**
* description: Whether the whole area or just the line should respond to mouseover
tooltips and other mouse or touch events.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/area-trackbyarea/ : Display the tooltip when the area is hovered
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *trackByArea;
/**
* description: Fill color or gradient for the area. When null, the series' color
is used with the series' fillOpacity.

In styled mode, the fill color can be set with the .highcharts-area
class name.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/area-fillcolor-default/ : Null by default
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/area-fillcolor-gradient/ : Gradient
* default: null
*/
@property(nonatomic, readwrite) HIColor *fillColor;
/**
* description: A separate color for the graph line. By default the line takes the
color of the series, but the lineColor setting allows setting a
separate color for the line without altering the fillColor.

In styled mode, the line stroke can be set with the .highcharts-graph
class name.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/area-linecolor/ : Dark gray line
* default: null
*/
@property(nonatomic, readwrite) HIColor *lineColor;
/**
* description: Fill opacity for the area. When you set an explicit fillColor,
the fillOpacity is not applied. Instead, you should define the
opacity in the fillColor with an rgba color definition. The
fillOpacity setting, also the default setting, overrides the alpha
component of the color setting.

In styled mode, the fill opacity can be set with the .highcharts-area
class name.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/area-fillopacity/ : Automatic fill color and fill opacity of 0.1
* default: 0.75
*/
@property(nonatomic, readwrite) NSNumber *fillOpacity;
/**
* description: An integer identifying the index to use for the base series, or a string
representing the id of the series.
* default: undefined
*/
@property(nonatomic, readwrite) id /* NSNumber, NSString */ baseSeries;

-(NSDictionary *)getParams;

@end
