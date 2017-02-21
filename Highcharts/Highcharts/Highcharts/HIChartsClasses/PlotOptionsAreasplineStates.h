#import "PlotOptionsAreasplineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsAreasplineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsAreasplineStatesHover *hover;

-(NSDictionary *)getParams;

@end
