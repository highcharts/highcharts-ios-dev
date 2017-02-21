#import "PlotOptionsArearangeStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsArearangeStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsArearangeStatesHover *hover;

-(NSDictionary *)getParams;

@end
