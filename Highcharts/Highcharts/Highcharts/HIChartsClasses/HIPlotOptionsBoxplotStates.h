#import "HIPlotOptionsBoxplotStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsBoxplotStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsBoxplotStatesHover *hover;

-(NSDictionary *)getParams;

@end
