#import "HIPlotOptionsLineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsLineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsLineStatesHover *hover;

-(NSDictionary *)getParams;

@end
