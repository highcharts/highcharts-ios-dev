#import "BubbleStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface BubbleStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) BubbleStatesHover *hover;

-(NSDictionary *)getParams;

@end
