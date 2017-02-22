#import "HIPolygonMarkerStatesSelect.h"
#import "HIPolygonMarkerStatesHover.h"


@interface HIPolygonMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) HIPolygonMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIPolygonMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
