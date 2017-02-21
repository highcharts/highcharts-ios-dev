#import "PlotOptionsSeriesStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsSeriesStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsSeriesStatesHover *hover;

-(NSDictionary *)getParams;

@end
