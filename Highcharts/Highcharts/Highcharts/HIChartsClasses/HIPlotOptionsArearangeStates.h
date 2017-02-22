#import "HIPlotOptionsArearangeStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsArearangeStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsArearangeStatesHover *hover;

-(NSDictionary *)getParams;

@end
