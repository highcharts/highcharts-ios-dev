/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPaneBackgroundBackgroundColorLinearGradient.h"


/**
* description: The background color or gradient for the pane.
*/
@interface HIPaneBackgroundBackgroundColor: HIChartsJSONSerializable

@property(nonatomic, readwrite) id stops;
@property(nonatomic, readwrite) HIPaneBackgroundBackgroundColorLinearGradient *linearGradient;

-(NSDictionary *)getParams;

@end
