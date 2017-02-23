#import "HISplineDataMarkerStatesHover.h"
#import "HISplineDataMarkerStatesSelect.h"


@interface HISplineDataMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) HISplineDataMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HISplineDataMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
