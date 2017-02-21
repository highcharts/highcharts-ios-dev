#import "PlotOptionsSplineMarkerStatesSelect.h"
#import "PlotOptionsSplineMarkerStatesHover.h"


@interface PlotOptionsSplineMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) PlotOptionsSplineMarkerStatesSelect *select;
@property(nonatomic, readwrite) PlotOptionsSplineMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
