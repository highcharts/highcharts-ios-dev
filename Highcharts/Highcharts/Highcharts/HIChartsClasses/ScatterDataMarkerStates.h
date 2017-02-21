#import "ScatterDataMarkerStatesHover.h"
#import "ScatterDataMarkerStatesSelect.h"


@interface ScatterDataMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) ScatterDataMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) ScatterDataMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
