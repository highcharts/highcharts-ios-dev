/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPyramidStatesHover.h"


/**
* description: Options for the series states.
*/
@interface HIPyramidStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
*/
@property(nonatomic, readwrite) HIPyramidStatesHover *hover;

-(NSDictionary *)getParams;

@end
