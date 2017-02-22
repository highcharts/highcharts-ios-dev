#import "HIAreasplineMarkerStatesSelect.h"
#import "HIAreasplineMarkerStatesHover.h"


@interface HIAreasplineMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) HIAreasplineMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIAreasplineMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
