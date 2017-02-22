#import "HIPlotOptionsPieStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsPieStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsPieStatesHover *hover;

-(NSDictionary *)getParams;

@end
