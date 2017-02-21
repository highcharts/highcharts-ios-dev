#import "AreaDataMarkerStatesHover.h"
#import "AreaDataMarkerStatesSelect.h"


@interface AreaDataMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) AreaDataMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) AreaDataMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
