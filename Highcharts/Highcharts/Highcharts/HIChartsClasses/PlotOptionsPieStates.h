#import "PlotOptionsPieStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsPieStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsPieStatesHover *hover;

-(NSDictionary *)getParams;

@end
