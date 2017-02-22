#import "HIAreasplineStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIAreasplineStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIAreasplineStatesHover *hover;

-(NSDictionary *)getParams;

@end
