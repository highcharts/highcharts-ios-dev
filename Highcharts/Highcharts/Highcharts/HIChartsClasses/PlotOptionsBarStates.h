#import "PlotOptionsBarStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsBarStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsBarStatesHover *hover;

-(NSDictionary *)getParams;

@end
