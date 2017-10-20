/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: CSS styles for the title. If the title text is longer than the
axis length, it will wrap to multiple lines by default. This can
be customized by setting textOverflow: 'ellipsis', by 
setting a specific width or by setting wordSpace: 'nowrap'.
In styled mode, the stroke width is given in the
.highcharts-axis-title class.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/title-style/ : Red
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/axis/ : Styled mode
* default: { "color": "#666666" }
*/
@interface HIYAxisTitleStyle: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSString *color;

-(NSDictionary *)getParams;

@end
