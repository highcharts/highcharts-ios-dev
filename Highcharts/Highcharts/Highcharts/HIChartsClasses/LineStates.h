#import "LineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface LineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) LineStatesHover *hover;

-(NSDictionary *)getParams;

@end
