/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsTreemapDrillUpButtonPosition.h"


/**
* description: Options for the button appearing when drilling down in a treemap.
*/
@interface HIPlotOptionsTreemapDrillUpButton: HIChartsJSONSerializable

/**
* description: The position of the button.
*/
@property(nonatomic, readwrite) HIPlotOptionsTreemapDrillUpButtonPosition *position;

-(NSDictionary *)getParams;

@end
