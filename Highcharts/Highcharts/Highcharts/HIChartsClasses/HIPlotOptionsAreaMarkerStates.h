#import "HIPlotOptionsAreaMarkerStatesHover.h"
#import "HIPlotOptionsAreaMarkerStatesSelect.h"


@interface HIPlotOptionsAreaMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) HIPlotOptionsAreaMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HIPlotOptionsAreaMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
