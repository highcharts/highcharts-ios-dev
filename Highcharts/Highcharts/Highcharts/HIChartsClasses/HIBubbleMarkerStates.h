#import "HIBubbleMarkerStatesSelect.h"
#import "HIBubbleMarkerStatesHover.h"


@interface HIBubbleMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) HIBubbleMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIBubbleMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
