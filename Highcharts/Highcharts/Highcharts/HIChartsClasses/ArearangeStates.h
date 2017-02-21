#import "ArearangeStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface ArearangeStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) ArearangeStatesHover *hover;

-(NSDictionary *)getParams;

@end
