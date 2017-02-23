#import "HILineDataMarkerStatesSelect.h"
#import "HILineDataMarkerStatesHover.h"


@interface HILineDataMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HILineDataMarkerStatesSelect *select;
@property(nonatomic, readwrite) HILineDataMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
