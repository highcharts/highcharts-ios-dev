#import "HIPlotOptionsScatterStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsScatterStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsScatterStatesHover *hover;

-(NSDictionary *)getParams;

@end
