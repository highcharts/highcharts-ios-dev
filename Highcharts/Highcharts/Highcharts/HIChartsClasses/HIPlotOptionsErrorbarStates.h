#import "HIPlotOptionsErrorbarStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsErrorbarStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsErrorbarStatesHover *hover;

-(NSDictionary *)getParams;

@end
