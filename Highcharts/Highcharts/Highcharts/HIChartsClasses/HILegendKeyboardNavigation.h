/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Keyboard navigation for the legend. Requires the Accessibility module.
*/
@interface HILegendKeyboardNavigation: HIChartsJSONSerializable

/**
* description: Enable/disable keyboard navigation for the legend. Requires the Accessibility
module.
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;

-(NSDictionary *)getParams;

@end
