#import "PolygonStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PolygonStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PolygonStatesHover *hover;

-(NSDictionary *)getParams;

@end
