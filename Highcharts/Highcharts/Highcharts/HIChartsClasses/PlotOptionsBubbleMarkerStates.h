#import "PlotOptionsBubbleMarkerStatesSelect.h"
#import "PlotOptionsBubbleMarkerStatesHover.h"


@interface PlotOptionsBubbleMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) PlotOptionsBubbleMarkerStatesSelect *select;
@property(nonatomic, readwrite) PlotOptionsBubbleMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
