#import "HIErrorbarStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIErrorbarStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIErrorbarStatesHover *hover;

-(NSDictionary *)getParams;

@end
