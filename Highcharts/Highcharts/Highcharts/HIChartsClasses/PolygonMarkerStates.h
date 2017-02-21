#import "PolygonMarkerStatesSelect.h"
#import "PolygonMarkerStatesHover.h"


@interface PolygonMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) PolygonMarkerStatesSelect *select;
@property(nonatomic, readwrite) PolygonMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
