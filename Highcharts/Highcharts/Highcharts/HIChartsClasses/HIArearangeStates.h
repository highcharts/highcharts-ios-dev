#import "HIArearangeStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIArearangeStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIArearangeStatesHover *hover;

-(NSDictionary *)getParams;

@end
