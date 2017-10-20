/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HILegendTitleStyle.h"


/**
* description: A title to be added on top of the legend.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/legend/title/ : Legend title
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/legend/alignment/ : Legend with title
*/
@interface HILegendTitle: HIChartsJSONSerializable

/**
* description: Generic CSS styles for the legend title.
* default: {"fontWeight":"bold"}
*/
@property(nonatomic, readwrite) HILegendTitleStyle *style;
/**
* description: A text or HTML string for the title.
* default: null
*/
@property(nonatomic, readwrite) NSString *text;

-(NSDictionary *)getParams;

@end
