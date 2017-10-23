/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIXrangeStatesHoverMarkerStatesHover.h"
#import "HIXrangeStatesHoverMarkerStatesSelect.h"


/**
* description: States for a single point marker.
*/
@interface HIXrangeStatesHoverMarkerStates: HIChartsJSONSerializable

/**
* description: The hover state for a single point marker.
*/
@property(nonatomic, readwrite) HIXrangeStatesHoverMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to
allow a point to be selected, set the series.allowPointSelect
option to true.
*/
@property(nonatomic, readwrite) HIXrangeStatesHoverMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
