#import "HIPolygonDataMarkerStatesSelect.h"
#import "HIPolygonDataMarkerStatesHover.h"


@interface HIPolygonDataMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HIPolygonDataMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIPolygonDataMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
