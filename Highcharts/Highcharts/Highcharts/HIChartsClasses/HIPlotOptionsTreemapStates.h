#import "HIPlotOptionsTreemapStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsTreemapStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsTreemapStatesHover *hover;

-(NSDictionary *)getParams;

@end
