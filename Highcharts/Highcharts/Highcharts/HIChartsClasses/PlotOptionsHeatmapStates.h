#import "PlotOptionsHeatmapStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsHeatmapStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsHeatmapStatesHover *hover;

-(NSDictionary *)getParams;

@end
