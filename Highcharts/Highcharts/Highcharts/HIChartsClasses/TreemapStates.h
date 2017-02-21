#import "TreemapStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface TreemapStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) TreemapStatesHover *hover;

-(NSDictionary *)getParams;

@end
