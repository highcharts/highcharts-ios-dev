#import "ScatterStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface ScatterStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) ScatterStatesHover *hover;

-(NSDictionary *)getParams;

@end
