/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Initial animation is by default disabled for the funnel chart.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-disabled/ : Animation disabled
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-slower/ : Slower animation
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-easing/ : Custom easing function
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/plotoptions/animation-slower/ : Slower animation
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/plotoptions/animation-easing/ : Custom easing function
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-animation-true/ : Animation enabled on map series
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/mapbubble-animation-false/ : Disabled on mapbubble series
*/
@interface HIPlotOptionsPyramidAnimation: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSNumber *duration;

-(NSDictionary *)getParams;

@end
