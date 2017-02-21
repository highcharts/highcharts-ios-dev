#import "PieStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PieStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PieStatesHover *hover;

-(NSDictionary *)getParams;

@end
