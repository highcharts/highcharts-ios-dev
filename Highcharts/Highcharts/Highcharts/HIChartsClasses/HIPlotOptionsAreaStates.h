#import "HIPlotOptionsAreaStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsAreaStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsAreaStatesHover *hover;

-(NSDictionary *)getParams;

@end
