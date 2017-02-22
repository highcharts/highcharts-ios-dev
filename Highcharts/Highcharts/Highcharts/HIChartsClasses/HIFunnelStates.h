#import "HIFunnelStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIFunnelStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIFunnelStatesHover *hover;

-(NSDictionary *)getParams;

@end
