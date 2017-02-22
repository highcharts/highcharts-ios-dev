#import "HIPlotOptionsSplineMarkerStatesSelect.h"
#import "HIPlotOptionsSplineMarkerStatesHover.h"


@interface HIPlotOptionsSplineMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) HIPlotOptionsSplineMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIPlotOptionsSplineMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
