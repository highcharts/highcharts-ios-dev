#import "PolygonDataMarkerStatesSelect.h"
#import "PolygonDataMarkerStatesHover.h"


@interface PolygonDataMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) PolygonDataMarkerStatesSelect *select;
@property(nonatomic, readwrite) PolygonDataMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
