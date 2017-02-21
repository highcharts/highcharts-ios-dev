#import "SplineDataMarkerStatesHover.h"
#import "SplineDataMarkerStatesSelect.h"


@interface SplineDataMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) SplineDataMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) SplineDataMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
