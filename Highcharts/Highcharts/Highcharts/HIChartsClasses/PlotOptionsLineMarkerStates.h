#import "PlotOptionsLineMarkerStatesSelect.h"
#import "PlotOptionsLineMarkerStatesHover.h"


@interface PlotOptionsLineMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) PlotOptionsLineMarkerStatesSelect *select;
@property(nonatomic, readwrite) PlotOptionsLineMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
