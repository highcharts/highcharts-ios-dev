#import "AreasplineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface AreasplineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) AreasplineStatesHover *hover;

-(NSDictionary *)getParams;

@end
