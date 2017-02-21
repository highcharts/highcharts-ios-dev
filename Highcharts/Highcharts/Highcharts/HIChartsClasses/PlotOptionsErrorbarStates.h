#import "PlotOptionsErrorbarStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface PlotOptionsErrorbarStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) PlotOptionsErrorbarStatesHover *hover;

-(NSDictionary *)getParams;

@end
