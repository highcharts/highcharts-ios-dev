#import "HIAreaDataMarkerStatesHover.h"
#import "HIAreaDataMarkerStatesSelect.h"


@interface HIAreaDataMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) HIAreaDataMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) HIAreaDataMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
