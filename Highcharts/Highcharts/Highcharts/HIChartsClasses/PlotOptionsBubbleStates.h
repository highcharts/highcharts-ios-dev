#import "PlotOptionsBubbleStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsBubbleStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsBubbleStatesHover *hover;

-(NSDictionary *)getParams;

@end
