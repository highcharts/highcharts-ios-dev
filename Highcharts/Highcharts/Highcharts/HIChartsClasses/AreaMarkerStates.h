#import "AreaMarkerStatesSelect.h"
#import "AreaMarkerStatesHover.h"


@interface AreaMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) AreaMarkerStatesSelect *select;
@property(nonatomic, readwrite) AreaMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
