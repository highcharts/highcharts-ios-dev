/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Determines the width of the ring per level.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/sunburst-levelsize/ : Sunburst with various sizes per level
*/
@interface HILevelSize: HIChartsJSONSerializable

/**
* description: How to interpret levelSize.value.
percentage gives a width relative to result of outer radius minus
inner radius.
pixels gives the ring a fixed width in pixels.
weight takes the remaining width after percentage and pixels, and
distributes it accross all "weighted" levels. The value relative to the
sum of all weights determines the width.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/sunburst-levelsize/ : Sunburst with various sizes per level
* accepted values: ["percentage", "pixels", "weight"]
*/
@property(nonatomic, readwrite) NSString *unit;
/**
* description: The value used for calculating the width of the ring. Its' affect is
determined by levelSize.unit.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/sunburst-levelsize/ : Sunburst with various sizes per level
*/
@property(nonatomic, readwrite) NSNumber *value;

-(NSDictionary *)getParams;

@end
