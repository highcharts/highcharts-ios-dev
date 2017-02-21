#import "BubbleMarkerStatesSelect.h"
#import "BubbleMarkerStatesHover.h"


@interface BubbleMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) BubbleMarkerStatesSelect *select;
@property(nonatomic, readwrite) BubbleMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
