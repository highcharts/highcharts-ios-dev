#import "HIPlotOptionsPolygonMarkerStatesSelect.h"
#import "HIPlotOptionsPolygonMarkerStatesHover.h"


@interface HIPlotOptionsPolygonMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@property(nonatomic, readwrite) HIPlotOptionsPolygonMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIPlotOptionsPolygonMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
