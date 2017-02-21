#import "LineDataMarkerStatesSelect.h"
#import "LineDataMarkerStatesHover.h"


@interface LineDataMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) LineDataMarkerStatesSelect *select;
@property(nonatomic, readwrite) LineDataMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
