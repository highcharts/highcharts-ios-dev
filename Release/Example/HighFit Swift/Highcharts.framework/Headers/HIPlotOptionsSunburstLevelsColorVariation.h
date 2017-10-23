/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Can set a colorVariation on all points which lies on the same level.
*/
@interface HIPlotOptionsSunburstLevelsColorVariation: HIChartsJSONSerializable

/**
* description: The ending value of a color variation. The last sibling will receive this
value.
*/
@property(nonatomic, readwrite) NSString *to;
/**
* description: The key of a color variation. Currently supports brightness only.
*/
@property(nonatomic, readwrite) NSString *key;

-(NSDictionary *)getParams;

@end
