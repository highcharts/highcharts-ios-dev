#import "HISplineMarkerStatesHover.h"
#import "HISplineMarkerStatesSelect.h"


@interface HISplineMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) HISplineMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HISplineMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
