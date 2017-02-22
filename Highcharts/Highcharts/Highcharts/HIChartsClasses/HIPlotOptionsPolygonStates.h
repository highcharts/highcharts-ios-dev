#import "HIPlotOptionsPolygonStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface HIPlotOptionsPolygonStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) HIPlotOptionsPolygonStatesHover *hover;

-(NSDictionary *)getParams;

@end
