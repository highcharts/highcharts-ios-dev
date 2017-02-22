#import "HIBoxplotStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIBoxplotStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIBoxplotStatesHover *hover;

-(NSDictionary *)getParams;

@end
