#import "ColumnrangeStatesHover.h"


/**
* description: A wrapper object for all the series options in specific states.
*/
@interface ColumnrangeStates: HIChartsJSONSerializable

/**
* description: Options for the hovered series
*/
@property(nonatomic, readwrite) ColumnrangeStatesHover *hover;

-(NSDictionary *)getParams;

@end
