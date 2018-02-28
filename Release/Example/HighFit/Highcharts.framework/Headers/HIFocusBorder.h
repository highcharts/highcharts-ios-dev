/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIStyle.h"


/**
* description: Options for the focus border drawn around elements while
navigating through them.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/accessibility/custom-focus : Custom focus ring
*/
@interface HIFocusBorder: HIChartsJSONSerializable

/**
* description: Focus border margin around the elements.
* default: 2
*/
@property(nonatomic, readwrite) NSNumber *margin;
/**
* description: Style options for the focus border drawn around elements 
while navigating through them. Note that some browsers in 
addition draw their own borders for focused elements. These
automatic borders can not be styled by Highcharts.

In styled mode, the border is given the 
.highcharts-focus-border class.
*/
@property(nonatomic, readwrite) HIStyle *style;
/**
* description: Enable/disable focus border for chart.
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: Hide the browser's default focus indicator.
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *hideBrowserFocusOutline;

-(NSDictionary *)getParams;

@end
