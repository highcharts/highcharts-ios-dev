#import "HIScatterMarkerStatesSelect.h"
#import "HIScatterMarkerStatesHover.h"


@interface HIScatterMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HIScatterMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIScatterMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end