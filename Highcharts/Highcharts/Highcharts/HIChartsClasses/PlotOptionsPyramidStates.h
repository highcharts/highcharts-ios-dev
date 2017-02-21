#import "PlotOptionsPyramidStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsPyramidStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsPyramidStatesHover *hover;

-(NSDictionary *)getParams;

@end
