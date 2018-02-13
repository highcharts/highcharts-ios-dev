/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"
#import "HIColor.h"


/**
* description: Options for annotation's shapes. Each shape inherits options
from the shapeOptions object. An option from the shapeOptions can be
overwritten by config for a specific shape.
*/
@interface HIShapeOptions: HIChartsJSONSerializable

/**
* description: The pixel stroke width of the shape.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/shape/ : Basic shape annotation*
*/
@property(nonatomic, readwrite) NSNumber *strokeWidth;
/**
* description: The height of the shape.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/shape/ : Basic shape annotation
*/
@property(nonatomic, readwrite) NSNumber *height;
/**
* description: The width of the shape.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/shape/ : Basic shape annotation
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: The color of the shape's stroke.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/shape/ : Basic shape annotation*
*/
@property(nonatomic, readwrite) HIColor *stroke;
/**
* description: The radius of the shape.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/shape/ : Basic shape annotation*
*/
@property(nonatomic, readwrite) NSNumber *r;
/**
* description: The type of the shape, e.g. circle or rectangle.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/shape/ : Basic shape annotation
* default: 'rect'
*/
@property(nonatomic, readwrite) NSString *type;
/**
* description: The color of the shape's fill.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/shape/ : Basic shape annotation*
*/
@property(nonatomic, readwrite) HIColor *fill;

-(NSDictionary *)getParams;

@end
