#import "HIAreaStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIAreaStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIAreaStatesHover *hover;

-(NSDictionary *)getParams;

@end
