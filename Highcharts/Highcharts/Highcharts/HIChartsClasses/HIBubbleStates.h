#import "HIBubbleStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIBubbleStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIBubbleStatesHover *hover;

-(NSDictionary *)getParams;

@end
