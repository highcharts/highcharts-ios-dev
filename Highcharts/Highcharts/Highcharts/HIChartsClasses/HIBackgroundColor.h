/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HILinearGradient.h"


/**
The background color or gradient for the pane.
*/
@interface HIBackgroundColor: HIChartsJSONSerializable

/**
Definition of the gradient, similar to SVG: object literal holdsstart position (x1, y1) and the end position (x2, y2) relativeto the shape, where 0 means top/left and 1 is bottom/right.All positions are floats between 0 and 1.
*/
@property(nonatomic, readwrite) HILinearGradient *linearGradient;
/**
The stops is an array of tuples, where the firstitem is a float between 0 and 1 assigning the relative position inthe gradient, and the second item is the color.

**Defaults to** _[[0, #ffffff], [1, #e6e6e6]]_.
*/
@property(nonatomic, readwrite) NSArray<NSArray *> *stops;

-(NSDictionary *)getParams;

@end
