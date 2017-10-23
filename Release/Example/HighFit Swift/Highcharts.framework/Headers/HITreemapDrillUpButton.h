/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HITreemapDrillUpButtonPosition.h"


/**
* description: Options for the button appearing when drilling down in a treemap.
*/
@interface HITreemapDrillUpButton: HIChartsJSONSerializable

/**
* description: The position of the button.
*/
@property(nonatomic, readwrite) HITreemapDrillUpButtonPosition *position;

-(NSDictionary *)getParams;

@end
