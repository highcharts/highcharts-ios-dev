/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: CSS styles for the label. Use whiteSpace: 'nowrap' to prevent
wrapping of category labels. Use textOverflow: 'none' to
prevent ellipsis (dots).
In styled mode, the labels are styled with the
.highcharts-axis-labels class.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-style/ : Red X axis labels
*/
@interface HIYAxisLabelsStyle: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSString *fontSize;
@property(nonatomic, readwrite) NSString *color;
@property(nonatomic, readwrite) NSString *cursor;

-(NSDictionary *)getParams;

@end
