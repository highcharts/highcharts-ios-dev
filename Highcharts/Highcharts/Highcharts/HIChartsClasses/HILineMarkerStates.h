#import "HILineMarkerStatesHover.h"
#import "HILineMarkerStatesSelect.h"


@interface HILineMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) HILineMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) HILineMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
