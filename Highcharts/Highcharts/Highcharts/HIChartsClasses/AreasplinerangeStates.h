#import "AreasplinerangeStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface AreasplinerangeStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) AreasplinerangeStatesHover *hover;

-(NSDictionary *)getParams;

@end
