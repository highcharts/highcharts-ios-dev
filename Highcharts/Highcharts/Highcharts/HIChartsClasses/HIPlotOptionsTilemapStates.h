/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsTilemapStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsTilemapStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
*/
@property(nonatomic, readwrite) HIPlotOptionsTilemapStatesHover *hover;

-(NSDictionary *)getParams;

@end