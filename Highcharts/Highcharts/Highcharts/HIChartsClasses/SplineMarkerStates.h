#import "SplineMarkerStatesHover.h"
#import "SplineMarkerStatesSelect.h"


@interface SplineMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) SplineMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) SplineMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end