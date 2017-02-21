#import "BarStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface BarStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) BarStatesHover *hover;

-(NSDictionary *)getParams;

@end
