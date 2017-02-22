#import "HIPlotOptionsLineMarkerStatesSelect.h"
#import "HIPlotOptionsLineMarkerStatesHover.h"


@interface HIPlotOptionsLineMarkerStates: HIChartsJSONSerializable

/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) HIPlotOptionsLineMarkerStatesSelect *select;
@property(nonatomic, readwrite) HIPlotOptionsLineMarkerStatesHover *hover;

-(NSDictionary *)getParams;

@end
