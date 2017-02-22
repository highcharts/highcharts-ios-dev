#import "HIPlotOptionsSeriesMarkerStatesHover.h"
#import "HIPlotOptionsSeriesMarkerStatesSelect.h"


@interface HIPlotOptionsSeriesMarkerStates: HIChartsJSONSerializable

@property(nonatomic, readwrite) HIPlotOptionsSeriesMarkerStatesHover *hover;
/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@property(nonatomic, readwrite) HIPlotOptionsSeriesMarkerStatesSelect *select;

-(NSDictionary *)getParams;

@end
