#import "PlotOptionsColumnrangeStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsColumnrangeStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsColumnrangeStatesHover *hover;

-(NSDictionary *)getParams;

@end
