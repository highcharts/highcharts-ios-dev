/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: CSS styles for the credits label.
* default: { "cursor": "pointer", "color": "#999999", "fontSize": "10px" }
*/
@interface HICreditsStyle: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSString *color;
@property(nonatomic, readwrite) NSString *cursor;
@property(nonatomic, readwrite) NSString *fontSize;

-(NSDictionary *)getParams;

@end
