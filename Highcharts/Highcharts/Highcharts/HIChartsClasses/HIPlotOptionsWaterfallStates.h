#import "HIPlotOptionsWaterfallStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsWaterfallStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsWaterfallStatesHover *hover;

-(NSDictionary *)getParams;

@end
