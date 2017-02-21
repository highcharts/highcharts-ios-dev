#import "PlotOptionsScatterStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsScatterStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsScatterStatesHover *hover;

-(NSDictionary *)getParams;

@end
