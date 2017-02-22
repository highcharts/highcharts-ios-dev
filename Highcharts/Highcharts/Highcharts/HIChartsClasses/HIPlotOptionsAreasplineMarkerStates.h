#import "HIPlotOptionsAreasplineMarkerStatesHover.h"
#import "HIPlotOptionsAreasplineMarkerStatesSelect.h"


@interface HIPlotOptionsAreasplineMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) HIPlotOptionsAreasplineMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) HIPlotOptionsAreasplineMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
