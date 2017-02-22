#import "HIPlotOptionsColumnStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsColumnStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsColumnStatesHover *hover;

-(NSDictionary *)getParams;

@end
