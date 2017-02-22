#import "HIPolygonStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPolygonStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPolygonStatesHover *hover;

-(NSDictionary *)getParams;

@end
