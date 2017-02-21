#import "PlotOptionsLineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsLineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsLineStatesHover *hover;

-(NSDictionary *)getParams;

@end
