#import "HIPlotOptionsSplineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsSplineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsSplineStatesHover *hover;

-(NSDictionary *)getParams;

@end
