/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: The position of the button.
*/
@interface HIPosition: HIChartsJSONSerializable

/**
* description: Vertical offset of the button.
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Horizontal offset of the button.
* default: -10
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Horizontal alignment of the button.
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Vertical alignment of the button.
* accepted values: ["top", "middle", "bottom"]
* default: top
*/
@property(nonatomic, readwrite) NSString *verticalAlign;

-(NSDictionary *)getParams;

@end
