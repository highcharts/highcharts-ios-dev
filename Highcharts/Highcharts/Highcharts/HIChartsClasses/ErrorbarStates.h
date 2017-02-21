#import "ErrorbarStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface ErrorbarStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) ErrorbarStatesHover *hover;

-(NSDictionary *)getParams;

@end
