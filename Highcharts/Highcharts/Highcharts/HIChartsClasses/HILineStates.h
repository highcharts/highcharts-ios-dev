#import "HILineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HILineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HILineStatesHover *hover;

-(NSDictionary *)getParams;

@end
