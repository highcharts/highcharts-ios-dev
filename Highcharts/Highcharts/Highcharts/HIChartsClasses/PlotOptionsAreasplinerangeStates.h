#import "PlotOptionsAreasplinerangeStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsAreasplinerangeStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsAreasplinerangeStatesHover *hover;

-(NSDictionary *)getParams;

@end
