/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Positioning options for the button within the relativeTo box.
Available properties are x, y, align and verticalAlign.
*/
@interface HIDrilldownDrillUpButtonPosition: HIChartsJSONSerializable

/**
* description: Vertical alignment of the button.

* accepted values: ["top", "middle", "bottom"]
* default: top
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: Horizontal alignment.
* default: right
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: The Y offset of the button.
* default: 10
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The X offset of the button.
* default: -10
*/
@property(nonatomic, readwrite) NSNumber *x;

-(NSDictionary *)getParams;

@end
