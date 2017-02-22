#import "HIPlotOptionsHeatmapStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsHeatmapStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsHeatmapStatesHover *hover;

-(NSDictionary *)getParams;

@end
