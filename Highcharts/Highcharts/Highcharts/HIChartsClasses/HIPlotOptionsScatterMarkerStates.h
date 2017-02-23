#import "HIPlotOptionsScatterMarkerStatesSelect.h"
#import "HIPlotOptionsScatterMarkerStatesHover.h"


@interface HIPlotOptionsScatterMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HIPlotOptionsScatterMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIPlotOptionsScatterMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
