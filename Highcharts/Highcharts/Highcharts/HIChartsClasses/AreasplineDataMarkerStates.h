#import "AreasplineDataMarkerStatesHover.h"
#import "AreasplineDataMarkerStatesSelect.h"


@interface AreasplineDataMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) AreasplineDataMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) AreasplineDataMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
