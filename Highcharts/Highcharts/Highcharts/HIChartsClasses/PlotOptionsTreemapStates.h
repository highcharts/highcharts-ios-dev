#import "PlotOptionsTreemapStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsTreemapStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsTreemapStatesHover *hover;

-(NSDictionary *)getParams;

@end
