#import "PlotOptionsAreasplineMarkerStatesHover.h"
#import "PlotOptionsAreasplineMarkerStatesSelect.h"


@interface PlotOptionsAreasplineMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) PlotOptionsAreasplineMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) PlotOptionsAreasplineMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
