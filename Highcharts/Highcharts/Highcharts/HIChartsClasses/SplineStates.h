#import "SplineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface SplineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) SplineStatesHover *hover;

-(NSDictionary *)getParams;

@end
