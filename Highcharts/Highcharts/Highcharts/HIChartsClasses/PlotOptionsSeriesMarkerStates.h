#import "PlotOptionsSeriesMarkerStatesHover.h"
#import "PlotOptionsSeriesMarkerStatesSelect.h"


@interface PlotOptionsSeriesMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) PlotOptionsSeriesMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) PlotOptionsSeriesMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
