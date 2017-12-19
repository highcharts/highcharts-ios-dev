/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


@interface HIKeyboardNavigation: HIChartsJSONSerializable

/**
* description: Enable/disable keyboard navigation for the legend. Requires the Accessibility
module.
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: Set the keyboard navigation mode for the chart. Can be "normal"
or "serialize". In normal mode, left/right arrow keys move
between points in a series, while up/down arrow keys move between
series. Up/down navigation acts intelligently to figure out which
series makes sense to move to from any given point.
In "serialize" mode, points are instead navigated as a single 
list. Left/right behaves as in "normal" mode. Up/down arrow keys
will behave like left/right. This is useful for unifying 
navigation behavior with/without screen readers enabled.
* default: normal
*/
@property(nonatomic, readwrite) NSString *mode;

-(NSDictionary *)getParams;

@end
