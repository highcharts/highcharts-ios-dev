#import "WaterfallStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface WaterfallStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) WaterfallStatesHover *hover;

-(NSDictionary *)getParams;

@end
