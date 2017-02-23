#import "HIAreaMarkerStatesSelect.h"
#import "HIAreaMarkerStatesHover.h"


@interface HIAreaMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HIAreaMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIAreaMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
