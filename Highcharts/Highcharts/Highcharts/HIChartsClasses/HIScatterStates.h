#import "HIScatterStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIScatterStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIScatterStatesHover *hover;

-(NSDictionary *)getParams;

@end
