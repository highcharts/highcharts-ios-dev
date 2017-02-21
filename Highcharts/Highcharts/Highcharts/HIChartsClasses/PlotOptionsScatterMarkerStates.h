#import "PlotOptionsScatterMarkerStatesSelect.h"
#import "PlotOptionsScatterMarkerStatesHover.h"


@interface PlotOptionsScatterMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) PlotOptionsScatterMarkerStatesSelect *select;
@property(nonatomic, readwrite) PlotOptionsScatterMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
