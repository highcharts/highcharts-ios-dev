#import "HIChartsJSONSerializable.h"
#import "HIColor.h"


/**
* description: The bottom of the frame around a 3D chart.
*/
@interface HIChartOptions3dFrameBottom: HIChartsJSONSerializable

/**
* description: The thickness of the panel.
*/
@property(nonatomic, readwrite) NSNumber *size;
/**
* description: The color of the panel.
*/
@property(nonatomic, readwrite) HIColor *color;

-(NSDictionary *)getParams;

@end
