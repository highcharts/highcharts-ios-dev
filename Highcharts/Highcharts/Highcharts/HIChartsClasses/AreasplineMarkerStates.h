#import "AreasplineMarkerStatesSelect.h"
#import "AreasplineMarkerStatesHover.h"


@interface AreasplineMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) AreasplineMarkerStatesSelect *select;
@property(nonatomic, readwrite) AreasplineMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
