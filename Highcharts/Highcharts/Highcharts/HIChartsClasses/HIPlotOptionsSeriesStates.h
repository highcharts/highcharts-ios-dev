#import "HIPlotOptionsSeriesStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsSeriesStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsSeriesStatesHover *hover;

-(NSDictionary *)getParams;

@end
