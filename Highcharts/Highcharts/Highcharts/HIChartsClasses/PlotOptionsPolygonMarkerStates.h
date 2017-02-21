#import "PlotOptionsPolygonMarkerStatesSelect.h"
#import "PlotOptionsPolygonMarkerStatesHover.h"


@interface PlotOptionsPolygonMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) PlotOptionsPolygonMarkerStatesSelect *select;
@property(nonatomic, readwrite) PlotOptionsPolygonMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
