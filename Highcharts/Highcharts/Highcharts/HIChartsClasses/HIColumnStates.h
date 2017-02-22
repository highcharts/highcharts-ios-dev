#import "HIColumnStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIColumnStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIColumnStatesHover *hover;

-(NSDictionary *)getParams;

@end
