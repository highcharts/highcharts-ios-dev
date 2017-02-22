#import "HIPieStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPieStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPieStatesHover *hover;

-(NSDictionary *)getParams;

@end
