#import "HIScatterDataMarkerStatesHover.h"
#import "HIScatterDataMarkerStatesSelect.h"


@interface HIScatterDataMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) HIScatterDataMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HIScatterDataMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
