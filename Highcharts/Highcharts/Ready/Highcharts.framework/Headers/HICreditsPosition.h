/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Position configuration for the credits label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/credits/position-left/ : Left aligned
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/credits/position-left/ : Left aligned
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/credits/customized/ : Left aligned
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/credits/customized/ : Left aligned
*/
@interface HICreditsPosition: HIChartsJSONSerializable

/**
* description: Horizontal pixel offset of the credits.
* default: -10
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Horizontal alignment of the credits.

* accepted values: ["left", "center", "right"]
* default: right
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Vertical pixel offset of the credits.
* default: -5
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Vertical alignment of the credits.

* accepted values: ["top", "middle", "bottom"]
* default: bottom
*/
@property(nonatomic, readwrite) NSString *verticalAlign;

-(NSDictionary *)getParams;

@end
