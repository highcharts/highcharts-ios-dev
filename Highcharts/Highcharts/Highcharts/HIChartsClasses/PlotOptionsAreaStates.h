#import "PlotOptionsAreaStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsAreaStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsAreaStatesHover *hover;

-(NSDictionary *)getParams;

@end
