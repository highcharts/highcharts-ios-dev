#import "HIChartsJSONSerializable.h"


/**
* description: The position of the no-data label, relative to the plot area. 
*/
@interface HINoDataPosition: HIChartsJSONSerializable

/**
* description: Vertical offset of the label, in pixels.
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Horizontal offset of the label, in pixels.
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Horizontal alignment of the label.
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Vertical alignment of the label.
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;

-(NSDictionary *)getParams;

@end
