#import "PyramidStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PyramidStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PyramidStatesHover *hover;

-(NSDictionary *)getParams;

@end
