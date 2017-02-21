#import "PlotOptionsAreaMarkerStatesHover.h"
#import "PlotOptionsAreaMarkerStatesSelect.h"


@interface PlotOptionsAreaMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) PlotOptionsAreaMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) PlotOptionsAreaMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
