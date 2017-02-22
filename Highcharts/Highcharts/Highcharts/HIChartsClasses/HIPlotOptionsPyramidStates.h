#import "HIPlotOptionsPyramidStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsPyramidStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsPyramidStatesHover *hover;

-(NSDictionary *)getParams;

@end
