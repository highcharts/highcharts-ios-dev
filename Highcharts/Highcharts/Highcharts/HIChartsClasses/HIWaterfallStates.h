#import "HIWaterfallStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIWaterfallStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIWaterfallStatesHover *hover;

-(NSDictionary *)getParams;

@end
