#import "HISplineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HISplineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HISplineStatesHover *hover;

-(NSDictionary *)getParams;

@end
