#import "HIChartsJSONSerializable.h"
#import "HexColor.h"


/**
* description: Defines the back panel of the frame around 3D charts.
*/
@interface ChartOptions3dFrameBack: HIChartsJSONSerializable

/**
* description: The color of the panel.
*/
@property(nonatomic, readwrite) HexColor *color;
/**
* description: Thickness of the panel.
*/
@property(nonatomic, readwrite) NSNumber *size;

-(NSDictionary *)getParams;

@end
