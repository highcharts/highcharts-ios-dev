/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Animation when hovering over the marker.
*/
@interface HIColumnrangeMarkerStatesHoverAnimation: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSNumber *duration;

-(NSDictionary *)getParams;

@end
