/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Shared CSS styles for all labels.
* default: { "color": "#333333" }
*/
@interface HILabelsStyle: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSString *color;
@property(nonatomic, readwrite) NSString *position;

-(NSDictionary *)getParams;

@end