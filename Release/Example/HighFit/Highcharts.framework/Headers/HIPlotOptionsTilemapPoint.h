/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsTilemapPointEvents.h"


/**
* description: Properties for each single point.
*/
@interface HIPlotOptionsTilemapPoint: HIChartsJSONSerializable

/**
* description: Events for each single point.
*/
@property(nonatomic, readwrite) HIPlotOptionsTilemapPointEvents *events;

-(NSDictionary *)getParams;

@end
