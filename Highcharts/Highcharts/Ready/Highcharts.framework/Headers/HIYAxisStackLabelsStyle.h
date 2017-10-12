/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: CSS styles for the label.
In styled mode, the styles are set in the
.highcharts-stack-label class.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-style/ : Red stack total labels
*/
@interface HIYAxisStackLabelsStyle: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSString *textOutline;
@property(nonatomic, readwrite) NSString *fontSize;
@property(nonatomic, readwrite) NSString *color;
@property(nonatomic, readwrite) NSString *fontWeight;

-(NSDictionary *)getParams;

@end
