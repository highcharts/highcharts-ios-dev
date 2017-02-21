#import "BoxplotStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface BoxplotStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) BoxplotStatesHover *hover;

-(NSDictionary *)getParams;

@end
