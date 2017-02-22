#import "HIPlotOptionsColumnrangeStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsColumnrangeStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsColumnrangeStatesHover *hover;

-(NSDictionary *)getParams;

@end
