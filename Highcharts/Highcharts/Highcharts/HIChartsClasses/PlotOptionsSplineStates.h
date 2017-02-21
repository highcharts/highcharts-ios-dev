#import "PlotOptionsSplineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsSplineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsSplineStatesHover *hover;

-(NSDictionary *)getParams;

@end
