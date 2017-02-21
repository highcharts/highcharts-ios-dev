#import "ScatterMarkerStatesSelect.h"
#import "ScatterMarkerStatesHover.h"


@interface ScatterMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) ScatterMarkerStatesSelect *select;
@property(nonatomic, readwrite) ScatterMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
