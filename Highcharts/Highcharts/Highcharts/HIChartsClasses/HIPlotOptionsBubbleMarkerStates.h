#import "HIPlotOptionsBubbleMarkerStatesSelect.h"
#import "HIPlotOptionsBubbleMarkerStatesHover.h"


@interface HIPlotOptionsBubbleMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HIPlotOptionsBubbleMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIPlotOptionsBubbleMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
